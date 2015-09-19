#include "software_renderer.h"

#include <cmath>
#include <vector>
#include <iostream>
#include <algorithm>

#include "triangulation.h"

using namespace std;

namespace CMU462 {

#define MAX3(x, y, z) max(max(x, y), z)
#define MIN3(x, y, z) min(min(x, y), z)
#define FRAC_PART(x) x < 0 ? (1 + floor(x) - x) : (x - floor(x))
#define RFRAC_PART(x) (1 - FRAC_PART(x))

// Implements SoftwareRenderer //

    void SoftwareRendererImp::draw_svg(SVG& svg) {

        // set top level transformation
        transformation = canvas_to_screen;

        // draw all elements
        for (size_t i = 0; i < svg.elements.size(); ++i) {
            draw_element(svg.elements[i]);
        }

        // draw canvas outline
        Vector2D a = transform(Vector2D(0, 0));
        a.x--;
        a.y++;
        Vector2D b = transform(Vector2D(svg.width, 0));
        b.x++;
        b.y++;
        Vector2D c = transform(Vector2D(0, svg.height));
        c.x--;
        c.y--;
        Vector2D d = transform(Vector2D(svg.width, svg.height));
        d.x++;
        d.y--;

        rasterize_line(a.x, a.y, b.x, b.y, Color::Black);
        rasterize_line(a.x, a.y, c.x, c.y, Color::Black);
        rasterize_line(d.x, d.y, b.x, b.y, Color::Black);
        rasterize_line(d.x, d.y, c.x, c.y, Color::Black);

        // resolve and send to render target
        resolve();

    }

    void SoftwareRendererImp::set_sample_rate(size_t sample_rate) {

        // Task 3:
        // You may want to modify this for supersampling support
        this->sample_rate = sample_rate;

    }

    void SoftwareRendererImp::set_render_target(unsigned char* render_target,
            size_t width, size_t height) {

        // Task 3:
        // You may want to modify this for supersampling support
        this->render_target = render_target;
        this->target_w = width;
        this->target_h = height;
        this->super_target_w = target_h * 2;
        this->super_target_h = target_w * 2;
        this->sample_mark = vector<char>(width * height);
        this->super_render_target = vector<char>(
                4 * super_target_w * super_target_h);
    }

    void SoftwareRendererImp::draw_element(SVGElement* element) {

        // Task 4 (part 1):
        // Modify this to implement the transformation stack

        switch (element->type) {
            case POINT:
                draw_point(static_cast<Point&>(*element));
                break;
            case LINE:
                draw_line(static_cast<Line&>(*element));
                break;
            case POLYLINE:
                draw_polyline(static_cast<Polyline&>(*element));
                break;
            case RECT:
                draw_rect(static_cast<Rect&>(*element));
                break;
            case POLYGON:
                draw_polygon(static_cast<Polygon&>(*element));
                break;
            case ELLIPSE:
                draw_ellipse(static_cast<Ellipse&>(*element));
                break;
            case IMAGE:
                draw_image(static_cast<Image&>(*element));
                break;
            case GROUP:
                draw_group(static_cast<Group&>(*element));
                break;
            default:
                break;
        }

    }

// Primitive Drawing //

    void SoftwareRendererImp::draw_point(Point& point) {

        Vector2D p = transform(point.position);
        rasterize_point(p.x, p.y, point.style.fillColor);

    }

    void SoftwareRendererImp::draw_line(Line& line) {

        Vector2D p0 = transform(line.from);
        Vector2D p1 = transform(line.to);
        rasterize_line(p0.x, p0.y, p1.x, p1.y, line.style.strokeColor);

    }

    void SoftwareRendererImp::draw_polyline(Polyline& polyline) {

        Color c = polyline.style.strokeColor;

        if (c.a != 0) {
            int nPoints = polyline.points.size();
            for (int i = 0; i < nPoints - 1; i++) {
                Vector2D p0 = transform(polyline.points[(i + 0) % nPoints]);
                Vector2D p1 = transform(polyline.points[(i + 1) % nPoints]);
                rasterize_line(p0.x, p0.y, p1.x, p1.y, c);
            }
        }
    }

    void SoftwareRendererImp::draw_rect(Rect& rect) {

        Color c;

        // draw as two triangles
        float x = rect.position.x;
        float y = rect.position.y;
        float w = rect.dimension.x;
        float h = rect.dimension.y;

        Vector2D p0 = transform(Vector2D(x, y));
        Vector2D p1 = transform(Vector2D(x + w, y));
        Vector2D p2 = transform(Vector2D(x, y + h));
        Vector2D p3 = transform(Vector2D(x + w, y + h));

        // draw fill
        c = rect.style.fillColor;
        if (c.a != 0) {
            rasterize_triangle(p0.x, p0.y, p1.x, p1.y, p2.x, p2.y, c);
            rasterize_triangle(p2.x, p2.y, p1.x, p1.y, p3.x, p3.y, c);
        }

        // draw outline
        c = rect.style.strokeColor;
        if (c.a != 0) {
            rasterize_line(p0.x, p0.y, p1.x, p1.y, c);
            rasterize_line(p1.x, p1.y, p3.x, p3.y, c);
            rasterize_line(p3.x, p3.y, p2.x, p2.y, c);
            rasterize_line(p2.x, p2.y, p0.x, p0.y, c);
        }

    }

    void SoftwareRendererImp::draw_polygon(Polygon& polygon) {

        Color c;

        // draw fill
        c = polygon.style.fillColor;
        if (c.a != 0) {

            // triangulate
            vector < Vector2D > triangles;
            triangulate(polygon, triangles);

            // draw as triangles
            for (size_t i = 0; i < triangles.size(); i += 3) {
                Vector2D p0 = transform(triangles[i + 0]);
                Vector2D p1 = transform(triangles[i + 1]);
                Vector2D p2 = transform(triangles[i + 2]);
                rasterize_triangle(p0.x, p0.y, p1.x, p1.y, p2.x, p2.y, c);
            }
        }

        // draw outline
        c = polygon.style.strokeColor;
        if (c.a != 0) {
            int nPoints = polygon.points.size();
            for (int i = 0; i < nPoints; i++) {
                Vector2D p0 = transform(polygon.points[(i + 0) % nPoints]);
                Vector2D p1 = transform(polygon.points[(i + 1) % nPoints]);
                rasterize_line(p0.x, p0.y, p1.x, p1.y, c);
            }
        }
    }

    void SoftwareRendererImp::draw_ellipse(Ellipse& ellipse) {

        // Extra credit

    }

    void SoftwareRendererImp::draw_image(Image& image) {

        Vector2D p0 = transform(image.position);
        Vector2D p1 = transform(image.position + image.dimension);

        rasterize_image(p0.x, p0.y, p1.x, p1.y, image.tex);
    }

    void SoftwareRendererImp::draw_group(Group& group) {

        for (size_t i = 0; i < group.elements.size(); ++i) {
            draw_element(group.elements[i]);
        }

    }

// Rasterization //

// The input arguments in the rasterization functions
// below are all defined in screen space coordinates

    void SoftwareRendererImp::rasterize_point(float x, float y, Color color) {

        // fill in the nearest pixel
        int sx = (int) floor(x);
        int sy = (int) floor(y);

        // check bounds
        if (sx < 0 || sx >= target_w)
            return;
        if (sy < 0 || sy >= target_h)
            return;

        // fill sample - NOT doing alpha blending!
        render_target[4 * (sx + sy * target_w)] = (uint8_t)(color.r * 255);
        render_target[4 * (sx + sy * target_w) + 1] = (uint8_t)(color.g * 255);
        render_target[4 * (sx + sy * target_w) + 2] = (uint8_t)(color.b * 255);
        render_target[4 * (sx + sy * target_w) + 3] = (uint8_t)(color.a * 255);

    }

    void SoftwareRendererImp::rasterize_line(float x0, float y0, float x1,
            float y1, Color color) {

        // Task 1:
        // Implement line rasterization
        float temp;
        int steep = abs(y1 - y0) > abs(x1 - x0);

        if (steep) {
            temp = x0;
            x0 = y0;
            y0 = temp;
            temp = x1;
            x1 = y1;
            y1 = temp;
        }

        if (x0 > x1) {
            temp = x0;
            x0 = x1;
            x1 = temp;
            temp = y0;
            y0 = y1;
            y1 = temp;
        }

        float dx = x1 - x0;
        float dy = y1 - y0;
        float slope = dy / dx;

        // handle first end point
        float x, y, xgap, y_inter;
        float xstart, ystart, xend, yend;
        x = round(x0);
        y = y0 + slope * (x - x0);
        xgap = RFRAC_PART(x0 + 0.5);
        xstart = x;
        ystart = y;
        if (steep) {
            rasterize_point(ystart, xstart, RFRAC_PART(y) * xgap * color);
            rasterize_point(ystart + 1, xstart, FRAC_PART(y) * xgap * color);
        } else {
            rasterize_point(xstart, ystart, RFRAC_PART(y) * xgap * color);
            rasterize_point(xstart, ystart + 1, FRAC_PART(y) * xgap * color);
        }
        y_inter = y + slope;

        // handle second end point
        x = round(x1);
        y = y1 + slope * (x - x1);
        xgap = FRAC_PART(x1 + 0.5);
        xend = x;
        yend = y;
        if (steep) {
            rasterize_point(yend, xend, RFRAC_PART(y) * xgap * color);
            rasterize_point(yend + 1, xend, FRAC_PART(y) * xgap * color);
        } else {
            rasterize_point(xend, yend, RFRAC_PART(y) * xgap * color);
            rasterize_point(xend, yend + 1, FRAC_PART(y) * xgap * color);
        }
        y = y_inter;

        // handle points on the line
        for (x = xstart; x <= xend; x++) {
            if (steep) {
                rasterize_point(y, x, RFRAC_PART(y) * color);
                rasterize_point(y + 1, x, FRAC_PART(y) * color);
            } else {
                rasterize_point(x, y, RFRAC_PART(y) * color);
                rasterize_point(x, y + 1, FRAC_PART(y) * color);
            }
            y += slope;
        }
    }

    float E(Vector2D T1, Vector2D T2, Vector2D test) {
        Vector2D dP = T2 - T1;
        Vector2D dTest = T1 - test;
        Vector2D dP_perp = Vector2D(dP.y, -dP.x);
        return dot(dTest, dP_perp);
    }

    int coverage(Vector2D A, Vector2D B, Vector2D C, Vector2D test) {
        return (E(A, B, test) <= 0 && E(B, C, test) <= 0 && E(C, A, test) <= 0);
    }

    void SoftwareRendererImp::rasterize_triangle(float x0, float y0, float x1,
            float y1, float x2, float y2, Color color) {
        // Task 2:
        // Implement triangle rasterization
        int x, y;
        Vector2D A = Vector2D(x0, y0);
        Vector2D B = Vector2D(x1, y1);
        Vector2D C = Vector2D(x2, y2);

        if (E(A, B, C) > 0) {
            Vector2D temp = A;
            A = B;
            B = temp;
        }

        for (x = MIN3(x0, x1, x2); x <= MAX3(x0, x1, x2); x++) {
            for (y = MIN3(y0, y1, y2); y <= MAX3(y0, y1, y2); y++) {
                Vector2D test = Vector2D(x, y);
                Vector2D test1 = Vector2D(x - 0.25, y - 0.25);
                Vector2D test2 = Vector2D(x - 0.75, y + 0.25);
                Vector2D test3 = Vector2D(x + 0.25, y - 0.75);
                Vector2D test4 = Vector2D(x + 0.75, y + 0.75);

                if (coverage(A, B, C, test)) {
                    sample_mark[y * target_w + x] = 1;
                }
                if (coverage(A, B, C, test1)) {
                    super_sample_plot(2 * x - 0.5, 2 * y - 0.5, color);
                }
                if (coverage(A, B, C, test2)) {
                    super_sample_plot(2 * x - 0.5, 2 * y + 0.5, color);
                }
                if (coverage(A, B, C, test3)) {
                    super_sample_plot(2 * x + 0.5, 2 * y - 0.5, color);
                }
                if (coverage(A, B, C, test4)) {
                    super_sample_plot(2 * x + 0.5, 2 * y + 0.5, color);
                }

            }
        }

    }

    void SoftwareRendererImp::rasterize_image(float x0, float y0, float x1,
            float y1, Texture& tex) {
        // Task ?:
        // Implement image rasterization

    }

// resolve samples to render target
    void SoftwareRendererImp::resolve(void) {

        // Task 3:
        // Implement supersampling
        // You may also need to modify other functions marked with "Task 3".

        int x, y;
        int i, j;
        int index;
        for (x = 0; x < target_w; x++) {
            for (y = 0; y < target_h; y++) {
                if (sample_mark[y * target_w + x]) {
                    int r = 0;
                    int g = 0;
                    int b = 0;
                    int a = 0;
                    for (i = 0; i < 2; i++) {
                        for (j = 0; j < 2; j++) {
                            int sx = 2 * x + i;
                            int sy = 2 * y + j;
                            index = 4 * (sx + sy * super_target_w);
                            r += super_render_target[index];
                            g += super_render_target[index + 1];
                            b += super_render_target[index + 2];
                            a += super_render_target[index + 3];
                        }
                    }
                    render_target[4 * (x + y * target_w)] = (uint8_t)(r / 4.0);
                    render_target[4 * (x + y * target_w) + 1] = (uint8_t)(
                            g / 4.0);
                    render_target[4 * (x + y * target_w) + 2] = (uint8_t)(
                            b / 4.0);
                    render_target[4 * (x + y * target_w) + 3] = (uint8_t)(
                            a / 4.0);
                }
            }
        }
        return;

    }

    void SoftwareRendererImp::super_sample_plot(float x, float y, Color color) {
        // fill in the nearest pixel
        int sx = (int) floor(x);
        int sy = (int) floor(y);

        // check bounds
        /*
         if (sx < 0 || sx >= super_target_w)
         return;
         if (sy < 0 || sy >= super_target_h)
         return;
         */
        // fill sample - NOT doing alpha blending!
        // super_render_target[sx + sy * super_target_w] = 1;
        super_render_target[4 * (sx + sy * super_target_w)] = (uint8_t)(
                color.r * 255);
        super_render_target[4 * (sx + sy * super_target_w) + 1] = (uint8_t)(
                color.g * 255);
        super_render_target[4 * (sx + sy * super_target_w) + 2] = (uint8_t)(
                color.b * 255);
        super_render_target[4 * (sx + sy * super_target_w) + 3] = (uint8_t)(
                color.a * 255);
    }

} // namespace CMU462

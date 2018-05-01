function epipolar_lines(epipolar_plane, p1, img)

    figure();
    imshow(img);
    hold on;
    slope = -epipolar_plane(1, :) ./ epipolar_plane(2, :);
    size(slope)
    x1 = p1(1, :) - 1000;
    x2 = p1(1, :) + 1000;
    y1 = p1(2, :) - (1000 .* slope);
    y2 = p1(2, :) + (1000 .* slope);
    line([x1; x2], [y1; y2]);
    size(x1)
    size(x2)
    hold off

end




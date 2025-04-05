function [closestX, closestY] = closestEdge(currentX, currentY)
    % Initialize closestX and closestY with the current coordinates
    closestX = currentX;
    closestY = currentY;

    % Calculate distances to the top and bottom edges
    distanceToTop = abs(1 - currentX);
    distanceToBottom = abs(120 - currentX);

    % Determine the minimum distance in the X direction (vertically)
    if distanceToTop < distanceToBottom
        minXDistance = distanceToTop;
    else
        minXDistance = distanceToBottom;
    end

    % Calculate distances to the left and right edges
    distanceToLeft = abs(1 - currentY);
    distanceToRight = abs(160 - currentY);

    % Determine the minimum distance in the Y direction (horizontally)
    if distanceToLeft < distanceToRight
        minYDistance = distanceToLeft;
    else
        minYDistance = distanceToRight;
    end

    % Determine which edge is closer and update closestX or closestY
    if minXDistance < minYDistance
        if distanceToTop < distanceToBottom
            closestX = 1;
        else
            closestX = 120;
        end
    else
        if distanceToLeft < distanceToRight
            closestY = 1;
        else
            closestY = 160;
        end
    end

    % Ensure closestX and closestY are within valid bounds
    if closestX < 1
        closestX = 1;
    end
    if closestY < 1
        closestY = 1;
    end
end

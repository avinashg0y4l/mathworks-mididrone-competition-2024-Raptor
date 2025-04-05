function [distance] = drawLine(startX, startY, endX, endY, u, compare)
    isSwapped = 0;
    
    % Check if the line is steep
    if abs(endY - startY) > abs(endX - startX)
        isSwapped = 1;
        
        % Swap the coordinates to handle the steep line
        [startX, startY] = deal(startY, startX);
        [endX, endY] = deal(endY, endX);
        
        % Initialize step directions
        xStep = 1; 
        yStep = 1;

        % Adjust step directions based on the direction of the line
        if endX < startX 
            xStep = -1; 
        end
        if endY < startY 
            yStep = -1; 
        end
    else
        % For non-steep lines, initialize step directions
        xStep = -1; 
        yStep = -1;

        % Adjust step directions based on the direction of the line
        if endX > startX 
            xStep = 1; 
        end
        if endY > startY 
            yStep = 1; 
        end
    end
    
    % Calculate differences in coordinates
    deltaY = abs(endY - startY);
    deltaX = abs(endX - startX);
    
    % Initialize distance and slope error
    distance = 0;
    slopeError = 2 * deltaY - 2 * deltaX;
  
    currentY = startY;
    range = 1;

    % Iterate over X coordinates
    for currentX = startX:xStep:endX
        if isSwapped == 1
            if u(currentY, currentX) == compare
                distance = range;
                break;
            end
        else
            if u(currentX, currentY) == compare
                distance = range;
                break;
            end
        end

        % Update range and slope error
        range = range + 1;
        slopeError = slopeError + 2 * deltaY;

        if slopeError > 0
            currentY = currentY + yStep;
            slopeError = slopeError - 2 * deltaX;
        end
    end
end

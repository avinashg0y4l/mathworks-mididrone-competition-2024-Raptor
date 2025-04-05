function edgeType = edgeCount(xPos, yPos)

% 1: top edge
% 2: left edge
% 3: bottom edge
% 4: right edge

edgeType = -1;  % Initialize with a default value
if xPos == 1
    edgeType = 1;  % Top edge
elseif xPos == 120
    edgeType = 3;  % Bottom edge
elseif yPos == 1
    edgeType = 2;  % Left edge
elseif yPos == 160
    edgeType = 4;  % Right edge
end

end

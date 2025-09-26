function [layerName,learnableNames] = networkHead(net)
%NETWORKHEAD Network head learnables
%   layerName = networkHead(net) returns the name of the last
%   convolution or fully connected layer in the network NET.
%   [layerName,learnableNames] = networkHead(net) also returns
%   the paths of the learnable parameters.

outputName = net.OutputNames;

supportedLayers = [
    "FullyConnectedLayer" 
    "Convolution2DLayer"];

layerName = outputName;
while ~isempty(layerName)
    layer = getLayer(net,layerName);

    if contains(class(layer),supportedLayers)
        break
    end

    layerName = findSource(net,layerName);

    if ~isscalar(layerName)
        error("Heads with branches not supported")
    end
end

if isempty(layerName)
    error("Network head not found")
end

layerName = string(layer.Name);

learnableNames = [...
    layerName + "/Weights"
    layerName + "/Bias"];

end

function sourceNames = findSource(net,name)
%FINDSOURCE Find upstream layer
%   sourceNames = findSource(NET,name) returns the names of the layers
%   connected to the specified layer in NET.

connections = net.Connections;
idx = find(connections.Destination == string(name));
sourceNames = connections.Source(idx);

end
function net = freezeNetwork(net,args)
% netFrozen = freezeNetwork(net) sets the learning rate factors of all the
% learnable parameters of the specified network to zero.
%
% netFrozen = freezeNetwork(net,LayersToIgnore=layerClassNames) also
% specifies the layer types to leave the learning rate factors unchanged.

arguments
    net dlnetwork
    args.LayerNamesToIgnore = string.empty;
    args.LayerTypesToIgnore = string.empty;
end

layerNamesToIgnore = args.LayerNamesToIgnore;
layerTypesToIgnore = args.LayerTypesToIgnore;

% Find names of layers to freeze.
layerNames = {net.Layers.Name}';
layerClassNames = arrayfun(@class,net.Layers,UniformOutput=false);

idxLayersToFreeze = ...
    ~contains(layerClassNames,layerTypesToIgnore) ...
    & ~ismember(layerNames,layerNamesToIgnore);

layersToFreeze = {net.Layers(idxLayersToFreeze).Name}';

% Create table of layer and parameter name pairs.
idxParametersToFreeze = ismember(net.Learnables.Layer,layersToFreeze);
tbl = net.Learnables(idxParametersToFreeze,1:2);

% Loop over parameters to freeze.
for i = 1:size(tbl,1)
    layerName = tbl.Layer(i);
    parameterName = tbl.Parameter(i);
    net = setLearnRateFactor(net,layerName,parameterName,0);
end

end
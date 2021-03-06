classdef Method
    %METHOD Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        parameters
        currentParameters
        model
    end
    
    methods
        function obj=Method(parameters)
            obj.parameters.parameters;
        end
        function [times] = train(obj, data);
        end
        function [pred, times] = test(obj, data);
        end
        function setParameters(obj, pars)
            nameParameters=fieldnames(pars);
            for i=1:length(nameParameters)
                name=nameParameters{i};
                if isfield(obj.parameters, name) && ~isempty(parameters.(name))
                    obj.currentParameters.(name)=obj.parameters.(name);
                else
                    obj.currentParameters.(name)=pars.(name);
                end
            end
        end
    end
    
end


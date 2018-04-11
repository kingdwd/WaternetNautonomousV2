classdef MissionPlanFeedback < robotics.ros.Message
    %MissionPlanFeedback MATLAB implementation of nautonomous_mission_msgs/MissionPlanFeedback
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'nautonomous_mission_msgs/MissionPlanFeedback' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '59b58f1aa7185168e47b9f459f428f83' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        NautonomousMissionMsgsMissionStatusClass = robotics.ros.msg.internal.MessageFactory.getClassForType('nautonomous_mission_msgs/MissionStatus') % Dispatch to MATLAB class for message type nautonomous_mission_msgs/MissionStatus
    end
    
    properties (Dependent)
        Feedback
    end
    
    properties (Access = protected)
        Cache = struct('Feedback', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Feedback'} % List of non-constant message properties
        ROSPropertyList = {'feedback'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = MissionPlanFeedback(msg)
            %MissionPlanFeedback Construct the message object MissionPlanFeedback
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function feedback = get.Feedback(obj)
            %get.Feedback Get the value for property Feedback
            if isempty(obj.Cache.Feedback)
                obj.Cache.Feedback = feval(obj.NautonomousMissionMsgsMissionStatusClass, obj.JavaMessage.getFeedback);
            end
            feedback = obj.Cache.Feedback;
        end
        
        function set.Feedback(obj, feedback)
            %set.Feedback Set the value for property Feedback
            validateattributes(feedback, {obj.NautonomousMissionMsgsMissionStatusClass}, {'nonempty', 'scalar'}, 'MissionPlanFeedback', 'Feedback');
            
            obj.JavaMessage.setFeedback(feedback.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Feedback)
                obj.Cache.Feedback.setJavaObject(feedback.getJavaObject);
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Feedback = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Recursively copy compound properties
            cpObj.Feedback = copy(obj.Feedback);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Feedback = feval([obj.NautonomousMissionMsgsMissionStatusClass '.loadobj'], strObj.Feedback);
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.Feedback = saveobj(obj.Feedback);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.nautonomous_mission_msgs.MissionPlanFeedback.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.nautonomous_mission_msgs.MissionPlanFeedback;
            obj.reload(strObj);
        end
    end
end
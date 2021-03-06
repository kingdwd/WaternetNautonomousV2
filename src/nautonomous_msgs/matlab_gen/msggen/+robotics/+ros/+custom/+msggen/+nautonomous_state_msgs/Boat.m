classdef Boat < robotics.ros.Message
    %Boat MATLAB implementation of nautonomous_state_msgs/Boat
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'nautonomous_state_msgs/Boat' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'b0536b90cacbeed281865d03728a1400' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        GeometryMsgsPointClass = robotics.ros.msg.internal.MessageFactory.getClassForType('geometry_msgs/Point') % Dispatch to MATLAB class for message type geometry_msgs/Point
        NautonomousStateMsgsBoatCommandClass = robotics.ros.msg.internal.MessageFactory.getClassForType('nautonomous_state_msgs/BoatCommand') % Dispatch to MATLAB class for message type nautonomous_state_msgs/BoatCommand
        NautonomousStateMsgsBoatParamClass = robotics.ros.msg.internal.MessageFactory.getClassForType('nautonomous_state_msgs/BoatParam') % Dispatch to MATLAB class for message type nautonomous_state_msgs/BoatParam
        NautonomousStateMsgsBoatStateClass = robotics.ros.msg.internal.MessageFactory.getClassForType('nautonomous_state_msgs/BoatState') % Dispatch to MATLAB class for message type nautonomous_state_msgs/BoatState
    end
    
    properties (Dependent)
        Id
        Param
        State
        Command
        Waypoints
    end
    
    properties (Access = protected)
        Cache = struct('Param', [], 'State', [], 'Waypoints', [], 'Command', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Command', 'Id', 'Param', 'State', 'Waypoints'} % List of non-constant message properties
        ROSPropertyList = {'command', 'id', 'param', 'state', 'waypoints'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = Boat(msg)
            %Boat Construct the message object Boat
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
        
        function id = get.Id(obj)
            %get.Id Get the value for property Id
            id = int32(obj.JavaMessage.getId);
        end
        
        function set.Id(obj, id)
            %set.Id Set the value for property Id
            validateattributes(id, {'numeric'}, {'nonempty', 'scalar'}, 'Boat', 'Id');
            
            obj.JavaMessage.setId(id);
        end
        
        function param = get.Param(obj)
            %get.Param Get the value for property Param
            if isempty(obj.Cache.Param)
                obj.Cache.Param = feval(obj.NautonomousStateMsgsBoatParamClass, obj.JavaMessage.getParam);
            end
            param = obj.Cache.Param;
        end
        
        function set.Param(obj, param)
            %set.Param Set the value for property Param
            validateattributes(param, {obj.NautonomousStateMsgsBoatParamClass}, {'nonempty', 'scalar'}, 'Boat', 'Param');
            
            obj.JavaMessage.setParam(param.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Param)
                obj.Cache.Param.setJavaObject(param.getJavaObject);
            end
        end
        
        function state = get.State(obj)
            %get.State Get the value for property State
            if isempty(obj.Cache.State)
                obj.Cache.State = feval(obj.NautonomousStateMsgsBoatStateClass, obj.JavaMessage.getState);
            end
            state = obj.Cache.State;
        end
        
        function set.State(obj, state)
            %set.State Set the value for property State
            validateattributes(state, {obj.NautonomousStateMsgsBoatStateClass}, {'nonempty', 'scalar'}, 'Boat', 'State');
            
            obj.JavaMessage.setState(state.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.State)
                obj.Cache.State.setJavaObject(state.getJavaObject);
            end
        end
        
        function command = get.Command(obj)
            %get.Command Get the value for property Command
            if isempty(obj.Cache.Command)
                obj.Cache.Command = feval(obj.NautonomousStateMsgsBoatCommandClass, obj.JavaMessage.getCommand);
            end
            command = obj.Cache.Command;
        end
        
        function set.Command(obj, command)
            %set.Command Set the value for property Command
            validateattributes(command, {obj.NautonomousStateMsgsBoatCommandClass}, {'nonempty', 'scalar'}, 'Boat', 'Command');
            
            obj.JavaMessage.setCommand(command.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Command)
                obj.Cache.Command.setJavaObject(command.getJavaObject);
            end
        end
        
        function waypoints = get.Waypoints(obj)
            %get.Waypoints Get the value for property Waypoints
            if isempty(obj.Cache.Waypoints)
                javaArray = obj.JavaMessage.getWaypoints;
                array = obj.readJavaArray(javaArray, obj.GeometryMsgsPointClass);
                obj.Cache.Waypoints = feval(obj.GeometryMsgsPointClass, array);
            end
            waypoints = obj.Cache.Waypoints;
        end
        
        function set.Waypoints(obj, waypoints)
            %set.Waypoints Set the value for property Waypoints
            if ~isvector(waypoints) && isempty(waypoints)
                % Allow empty [] input
                waypoints = feval([obj.GeometryMsgsPointClass '.empty'], 0, 1);
            end
            
            validateattributes(waypoints, {obj.GeometryMsgsPointClass}, {'vector'}, 'Boat', 'Waypoints');
            
            javaArray = obj.JavaMessage.getWaypoints;
            array = obj.writeJavaArray(waypoints, javaArray, obj.GeometryMsgsPointClass);
            obj.JavaMessage.setWaypoints(array);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Waypoints)
                obj.Cache.Waypoints = [];
                obj.Cache.Waypoints = obj.Waypoints;
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Param = [];
            obj.Cache.State = [];
            obj.Cache.Waypoints = [];
            obj.Cache.Command = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.Id = obj.Id;
            
            % Recursively copy compound properties
            cpObj.Param = copy(obj.Param);
            cpObj.State = copy(obj.State);
            cpObj.Command = copy(obj.Command);
            cpObj.Waypoints = copy(obj.Waypoints);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Id = strObj.Id;
            obj.Param = feval([obj.NautonomousStateMsgsBoatParamClass '.loadobj'], strObj.Param);
            obj.State = feval([obj.NautonomousStateMsgsBoatStateClass '.loadobj'], strObj.State);
            obj.Command = feval([obj.NautonomousStateMsgsBoatCommandClass '.loadobj'], strObj.Command);
            WaypointsCell = arrayfun(@(x) feval([obj.GeometryMsgsPointClass '.loadobj'], x), strObj.Waypoints, 'UniformOutput', false);
            obj.Waypoints = vertcat(WaypointsCell{:});
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
            
            strObj.Id = obj.Id;
            strObj.Param = saveobj(obj.Param);
            strObj.State = saveobj(obj.State);
            strObj.Command = saveobj(obj.Command);
            strObj.Waypoints = arrayfun(@(x) saveobj(x), obj.Waypoints);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.nautonomous_state_msgs.Boat.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.nautonomous_state_msgs.Boat;
            obj.reload(strObj);
        end
    end
end

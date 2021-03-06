classdef Route < robotics.ros.Message
    %Route MATLAB implementation of nautonomous_mpc_msgs/Route
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'nautonomous_mpc_msgs/Route' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '0511c019d3d3f0edeb56aaf3709c8aea' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        GeometryMsgsPointClass = robotics.ros.msg.internal.MessageFactory.getClassForType('geometry_msgs/Point') % Dispatch to MATLAB class for message type geometry_msgs/Point
    end
    
    properties (Dependent)
        Waypoints
    end
    
    properties (Access = protected)
        Cache = struct('Waypoints', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Waypoints'} % List of non-constant message properties
        ROSPropertyList = {'waypoints'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = Route(msg)
            %Route Construct the message object Route
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
            
            validateattributes(waypoints, {obj.GeometryMsgsPointClass}, {'vector'}, 'Route', 'Waypoints');
            
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
            obj.Cache.Waypoints = [];
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
            cpObj.Waypoints = copy(obj.Waypoints);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
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
            
            strObj.Waypoints = arrayfun(@(x) saveobj(x), obj.Waypoints);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.nautonomous_mpc_msgs.Route.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.nautonomous_mpc_msgs.Route;
            obj.reload(strObj);
        end
    end
end

classdef Rx < adi.common.Rx & adi.common.RxTx ...
        & adi.AD7606x.Base
    % AD7605-4 Precision ADC Class
    % 
    % adi.AD7605_4.Rx Receives data from the AD7605 ADC
    % The adi.AD7605_4.Rx System object is a signal source that can receive
    % data from the AD7605-4.
    %
    %   `rx = adi.AD7605_4.Rx;`
    %   `rx = adi.AD7605_4.Rx('uri','ip:192.168.2.1');`
    %
    % `AD7605-4 Datasheet <https://www.analog.com/media/en/technical-documentation/data-sheets/ad7605-4.pdf>`_

    properties (Nontunable, Hidden)
        channel_names = {'voltage0','voltage1','voltage2','voltage3'};
    end

    methods
        %% Constructor
        function obj = Rx(varargin)
            obj = obj@adi.AD7606x.Base('ad7605-4','ad7605-4','int16',varargin{:});
        end
    end
    
 end  

function varargout = figur(xlabelstring,ylabelstring,varargin)

    handle = figure(varargin{:});
    hold on
    box on
    grid on
    grid minor
    xlabel(xlabelstring)
    ylabel(ylabelstring)
    
    set(gca,'XMinorTick','on','YMinorTick','on');
    set(gca,'FontSize',15);
    set(gca,'TickLabelInterpreter', 'latex');
    
    set(gca,'GridLineStyle','-');
    set(gca,'MinorGridLineStyle',':');
    set(gca,'GridColor',[0.15 0.15 0.15]);
    set(gca,'MinorGridColor',[0.1 0.1 0.1]);
    
    set(gcf,'Units','pixels');
    position = get(gcf,'Position');
    set(gcf,'Position',[position(1) position(2)-200 600 450]);
    set(gca,'Units','normalized');
    set(gca,'Position',[0.1300 0.1350 0.7750 0.7900]);

end
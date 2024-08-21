%% 统一设置图形属性，输入变量为  横坐标、纵坐标、标题
%默认线宽 2， 字体 12

function  FigPorperty(XLabel,YLabel,Title)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
ha = gca;                 % 获取当前图形的坐标轴句柄
ha.LineWidth =  2.000;    % 设置 坐标轴线宽
ha.FontWeight = 'bold';   % 设置字体的宽度， bold （粗体）或 normal（正常）
ha.FontSize =  12;        % 字体大小
ha.XGrid = 'off';     % 这里设置的是 细的网格，也可以设置粗网格:ha.XGrid = 'on';
ha.YGrid = 'off';
ha.Box = 'on';           % 取消 框线 ，  有些论文要求不要框

% 横纵坐标
hXL = xlabel('t');        % 获取横坐标句柄
hXL.Interpreter =  'latex';  % 同title；
hXL.String = XLabel;
hXL.FontSize =  12;
hXL.FontWeight =  'bold';

hYL = ylabel('2');
hYL.Interpreter =  'latex';
hYL.String =  YLabel;
hYL.FontSize =  12;
hYL.FontWeight =  'bold';
hYL.Rotation = 90;
% hYL.Position = [-1.4 6000 -1];
ht = title('');          % 获取当前标题句柄
ht.Interpreter =  'latex'; % 解释器。若没有公式，默认即可。 若有公式，可设置为 'latex'。 
ht.String =  Title;       % 标题内容。若解释器设置为'latex',则可输入公式，如 '$A_{i}^{2}$'
ht.FontSize =  12;         % 字体大小
ht.FontWeight =  'bold';   % 字体宽度

% hLg = legend('$x_0$','$x_1$','$x_2$','$x_3$','$x_4$','$x_5$');
% hLg.Interpreter = 'latex';%文本解释器设置为 'latex'
hLg.Location = 'northeast';
hLg.NumColumns = 1;%设置图例中的列数为 1 列
hLg.EdgeColor = [1 1 1];%设置图例边框的颜色为白色 (RGB 值为 [1 1 1]),黑色[0,0,0]
hLg.FontSize =  10;

end
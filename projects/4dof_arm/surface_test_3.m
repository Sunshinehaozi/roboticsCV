% ��������ͱ����������ڴ治��
% clc;clear;

% ������
% ���ݸ�ʽ��x,y,z
% data = load('hv_re.txt');
x1 = x;
y1 = y;
z1 = z;

% ��ϡ�������ڴ治��
count    = 1;     % �±���������
interval = 1; % ��ϡ���
for i = 1 : interval : length(x1)
    xx(count, 1) = x(i);
    yy(count, 1) = y(i);
    zz(count, 1) = z(i);
    count = count + 1;
end

%ȷ���������꣨x��y����Ĳ�����ȡ0.1��
[X,Y]=meshgrid(min(xx):0.1:max(xx),min(yy):0.1:max(yy)); 
%�������λ�ò�ֵ��Z��ע�⣺��ͬ�Ĳ�ֵ�����õ������߹⻬�Ȳ�ͬ
Z=griddata(xx,yy,zz,X,Y,'v4');
%��������
figure(1)
surf(X,Y,Z);
shading interp;
colormap(jet);
% view(0, 90);
colorbar;
print(gcf, '-djpeg', 'xyz.jpg'); % save picture
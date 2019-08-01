function b = itsst(Tx,fs, xMean) 
%	------------------- ��ʱ����Ҷ��任 -------------------- 
%Input:
%       Wx:��ʱ����Ҷ�任ϵ��
%       xMean:���任ʱȥ����ƽ��ֵ
%       fs:����Ƶ�ʣ�Hz��
%       WindowOpt:������ѡ�����
%           WindowOpt.s��(0.01) ��������ʼ�߶�
%           WindowOpt.f0��(0) ��������ʼ����Ƶ��
%           WindowOpt.type��(gauss) ����������
%       Parameter:Ƶ��ѡ�����
%           Parameter.L��(200) Ƶ�ʻ��ָ���
%           Parameter.fmin��(��С�ֱ���) ������СƵ��
%           Parameter.fmax��(�ο�˹��Ƶ��) �������Ƶ��
%Output:
%       b:�ع��ź�
%---------------------------------------------------------------------------------
%    Synchrosqueezing Toolbox
%    Authors: ���ܽܣ�2019/2/8��
%---------------------------------------------------------------------------------
%% ��任
    %�ع�
    b = (sum(Tx,2))';
    b = [conj(b) , zeros(1,length(b)-2)]*fs;
%     figure(8)
%     plot(imag(b)/2)
    b = ifft(b);
    b = real(b);
    % ���ƽ��ֵ
    b = b+xMean;
end
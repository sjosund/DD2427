function FindClassmates()
%FINDCLASSMATES Summary of this function goes here
%   Detailed explanation goes here
    dirName = '../../Pics/StudentImages/';
    fileList = dir(dirName);
    
    for i=3:6
        img = imread(strcat(dirName,fileList(i).name));
        bim = SkinClassifier(img);
        [bx, by] = FindBiggestComp(bim);
        subplot(2,4,i-2);
        imagesc(bim);
        subplot(2,4,i+2);
        imagesc(img);
        rectangle('Position',[bx(1),by(1),bx(3)-bx(1),by(3)-by(1)],...
            'LineWidth',5);
    end
    
end


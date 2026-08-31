disp(':::::::::: PROGRAM STARTED:::::::::::::::')
%% ASSIGNMENT ONE GROUP 1 %%

disp('ASSIGMENT OF GROUP 1 STARTED');
%% IMPORT THE DETAILS OF AMI STUDENTS EXCELL FILE %%

disp('DETAILS OF AMI STUDENTS ');
A = readtable('C:\Users\EDSON\Desktop\matlab assignment\DETAILS OF AMI STUDENTS.xlsx' ...
    ,Sheet='sheet1',ReadVariableNames=true);
disp('IMPORTATION IS DONE');
%% EXPORTING THE EXCELL FILE %%

writetable(A,'AMIGROUP1.XLSX',Sheet='sheet1');
disp('TABLE WRITING COMPLETED');
%% VISUALISATION OF A BAR GRAPH %%

Q=figure('name','BAR');
X= A.amiclassgroupone;
Y=A.AGE;
bar(X,Y);
xlabel('amiclassgroupone');
ylabel('age');
title('A BAR GRAPH SHOWING age OF AMI CLASS');
disp('ploting is done');
%% SAVING

saveas(Q,'bargraph1.png');
%% another plot

P = figure('name','Bar');
X= A.STUDENTNUMBER;
Y=A.AGE;
bar(X,Y);
xlabel('studentnumber');
ylabel('age');
title('A BAR GRAPH SHOWING student number OF AMI CLASS');
disp('ploting is done');
%% SAVING
saveas(P,'bargraph2.png');


%% GPA ANALYSISNG FOR SEMESTER ONE %%
B = readtable('AMI1 RESULTS FOR SEMESTER ONE.xlsx' ...
    ,Sheet='MARKS 1',ReadVariableNames=true);
ENGMATH1_CUs=4;
ENGMECH1_Cus=4;
ENGDRAWING = 4;
COMMSKILLS = 3;
SUSTAINABLE = 3;
TRENDSINCOMPUTING = 3;
Total_CUS1 = (ENGMATH1_CUs + ENGMECH1_Cus + ENGDRAWING + COMMSKILLS + SUSTAINABLE + TRENDSINCOMPUTING);
Z1= height(B);
Math1=B.ENGMATH1;
Mech1=B.ENGMECH1;
ED=B.ENGDRAWING;
COM=B.COMMSKILLS;
SDN=B.SUSTAINABLE;
Trends=B.TRENDSINCOMPUTING;
names=B.NAMEOFSTUDENT;
for n= 1:Z1
    current_student=string(names(n));
    fprintf('working on %s\n',current_student)
    if Math1(n) >=80
        Math1weights=(5*ENGMATH1_CUs);
    elseif Math1(n) >= 75
        Math1weights=(4.5*ENGMATH1_CUs);
    elseif Math1(n) >= 70
        Math1weights=(4*ENGMATH1_CUs);
    elseif Math1(n)>=65
        Math1weights=(3.5*ENGMATH1_CUs);
    elseif Math1(n) >= 60
        Math1weights=(3*ENGMATH1_CUs);
    elseif Math1(n) >= 55
        Math1weights=(2.5*ENGMATH1_CUs);
    elseif Math1(n) >=50
        Math1weights=(2*ENGMATH1_CUs);
    else
        math2weights=(0*ENGMATH1_CUs);
    end
    
    if Mech1(n) >=80
        Mech1wieghts=(5*ENGMECH1_Cus);
    elseif Mech1(n) >= 75
        Mech1wieghts=(4.5*ENGMECH1_Cus);
    elseif Mech1(n) >= 70
        Mech1wieghts=(4*ENGMECH1_Cus);
    elseif Mech1(n)>=65
        Mech1wieghts=(3.5*ENGMECH1_Cus);
    elseif Mech1(n) >= 60
        Mech1wieghts=(3*ENGMECH1_Cus);
    elseif Mech1(n) >= 55
        Mech1wieghts=(2.5*ENGMECH1_Cus);
    elseif Mech1(n) >=50
        Mech1wieghts=(2*ENGMECH1_Cus);
    else
        Mech1wieghts=(0*ENGMECH1_Cus);
    end
    
    if ED(n) >=80
        EDweights=(5*ENGDRAWING);
    elseif ED(n) >= 75
        EDweights=(4.5*ENGDRAWING);
    elseif ED(n) >= 70
        EDweights=(4*ENGDRAWING);
    elseif ED(n)>=65
        EDweights=(3.5*ENGDRAWING);
    elseif ED(n) >= 60
        EDweights=(3*ENGDRAWING);
    elseif ED(n)>= 55
        EDweights=(2.5*ENGDRAWING);
    elseif ED(n)>=50
        EDweights=(2*ENGDRAWING);
    else
        EDweights=(0*ENGDRAWING);
    end

    if COM(n) >=80
        COMweights=(5*COMMSKILLS);
    elseif COM(n) >= 75
        COMweights=(4.5*COMMSKILLS);
    elseif COM(n) >= 70
        COMweights=(4*COMMSKILLS);
    elseif COM(n)>=65
        COMweights=(3.5*COMMSKILLS);
    elseif COM(n) >= 60
        COMweights=(3*COMMSKILLS);
    elseif COM(n)>= 55
        COMweights=(2.5*COMMSKILLS);
    elseif COM(n)>=50
        COMweights=(2*COMMSKILLS);
    else
        COMweights=(0*COMMSKILLS);
    end
    
    if SDN(n) >=80
        SDNweights=(5*SUSTAINABLE);
    elseif SDN(n) >= 75
        SDNweights=(4.5*SUSTAINABLE);
    elseif SDN(n) >= 70
        SDNweights=(4*SUSTAINABLE);
    elseif SDN(n)>=65
        SDNweights=(3.5*SUSTAINABLE);
    elseif SDN(n) >= 60
        SDNweights=(3*SUSTAINABLE);
    elseif SDN(n)>= 55
        SDNweights=(2.5*SUSTAINABLE);
    elseif SDN(n)>=50
        SDNweights=(2*SUSTAINABLE);
    else
        SDNweights=(0*SUSTAINABLE);
    end

    if Trends(n) >=80
        Trendsweights=(5*TRENDSINCOMPUTING);
    elseif Trends(n) >= 75
        Trendsweights=(4.5*TRENDSINCOMPUTING);
    elseif Trends(n) >= 70
        Trendsweights=(4*TRENDSINCOMPUTING);
    elseif Trends(n)>=65
        Trendsweights=(3.5*TRENDSINCOMPUTING);
    elseif Trends(n) >= 60
        Trendsweights=(3*TRENDSINCOMPUTING);
    elseif Trends(n)>= 55
        Trendsweights=(2.5*TRENDSINCOMPUTING);
    elseif Trends(n)>=50
        Trendsweights=(2*TRENDSINCOMPUTING);
    else
        Trendsweights=(0*TRENDSINCOMPUTING);
    end
    
    GPA1=((Math1weights+Mech1wieghts+EDweights+COMweights+SDNweights+Trendsweights)/Total_CUS1);
end

C = readtable('AMI1 RESULTS FOR SEMESTER TWO.xlsx' ...
    ,Sheet='MARKS 2',ReadVariableNames=true);
%% GPA ANALYSISNG FOR SEMESTER TWO %%
ENGMATH2_CUs=4;
AUTOCAD_Cus=3;
ENGMECH2_Cus=4;
PRODCTIONTECHNOLOGY=4;
MECHANICSOFMATERIALS1_CUs=4;
ELECTRICALTECHNOLOGY=4;
Total_CUS2 = (ELECTRICALTECHNOLOGY + ENGMATH2_CUs + PRODCTIONTECHNOLOGY + MECHANICSOFMATERIALS1_CUs + AUTOCAD_Cus + ENGMECH2_Cus);
%% ANALYSE

Z2= height(C);
Math2=C.ENGMATH2;
Electec=C.ELECTRICALTECHNOLOGY;
Prdct=C.PRODUCTIONTECHNOLOGY;
Mech2=C.ENGMECH2;
Mom1=C.MECHANICSOFMATERIALS1;
Auto=C.AUTOCAD;
names=C.NAMEOFSTUDENT;
for n= 1:Z2
    current_student=string(names(n));
    fprintf('working on %s\n',current_student)
    if Math2(n) >=80
        Math2weights=(5*ENGMATH2_CUs);
    elseif Math2(n) >= 75
        Math2weights=(4.5*ENGMATH2_CUs);
    elseif Math2(n) >= 70
        Math2weights=(4*ENGMATH2_CUs);
    elseif Math2(n)>=65
        Math2weights=(3.5*ENGMATH2_CUs);
    elseif Math2(n) >= 60
        Math2weights=(3*ENGMATH2_CUs);
    elseif Math2(n) >= 55
        Math2weights=(2.5*ENGMATH2_CUs);
    elseif Math2(n) >=50
        Math2weights=(2*ENGMATH2_CUs);
    else
        Math2weights=(0*ENGMATH2_CUs);
    end
    
    if Electec(n) >=80
        Electecwieghts=(5*ELECTRICALTECHNOLOGY);
    elseif Electec(n) >= 75
        Electecwieghts=(4.5*ELECTRICALTECHNOLOGY);
    elseif Electec(n) >= 70
        Electecwieghts=(4*ELECTRICALTECHNOLOGY);
    elseif Electec(n)>=65
        Electecwieghts=(3.5*ELECTRICALTECHNOLOGY);
    elseif Electec(n) >= 60
        Electecwieghts=(3*ELECTRICALTECHNOLOGY);
    elseif Electec(n) >= 55
        Electecwieghts=(2.5*ELECTRICALTECHNOLOGY);
    elseif Electec(n) >=50
        Electecwieghts=(2*ELECTRICALTECHNOLOGY);
    else
        Electecwieghts=(0*ELECTRICALTECHNOLOGY);
    end
    
    if Prdct(n) >=80
        Prdctweights=(5*PRODCTIONTECHNOLOGY);
    elseif Prdct(n) >= 75
        Prdctweights=(4.5*PRODCTIONTECHNOLOGY);
    elseif Prdct(n) >= 70
        Prdctweights=(4*PRODCTIONTECHNOLOGY);
    elseif Prdct(n)>=65
        Prdctweights=(3.5*PRODCTIONTECHNOLOGY);
    elseif Prdct(n) >= 60
        Prdctweights=(3*PRODCTIONTECHNOLOGY);
    elseif Prdct(n)>= 55
        Prdctweights=(2.5*PRODCTIONTECHNOLOGY);
    elseif Prdct(n)>=50
        Prdctweights=(2*PRODCTIONTECHNOLOGY);
    else
        Prdctweights=(0*PRODCTIONTECHNOLOGY);
    end
    
   if Mech2(n) >=80
        Mech2weights=(5*ENGMECH2_Cus);
    elseif Mech2(n) >= 75
        Mech2weights=(4.5*ENGMECH2_Cus);
    elseif Mech2(n) >= 70
        Mech2weights=(4*ENGMECH2_Cus);
    elseif Mech2(n)>=65
        Mech2weights=(3.5*ENGMECH2_Cus);
    elseif Mech2(n) >= 60
        Mech2weights=(3*ENGMECH2_Cus);
    elseif Mech2(n)>= 55
        Mech2weights=(2.5*ENGMECH2_Cus);
    elseif Mech2(n)>=50
        Mech2weights=(2*ENGMECH2_Cus);
    else
        Mech2weights=(0*ENGMECH2_Cus);
   end

   if Mom1(n) >=80
        Mom1weights=(5*MECHANICSOFMATERIALS1_CUs);
    elseif Mom1(n) >= 75
        Mom1weights=(4.5*MECHANICSOFMATERIALS1_CUs);
    elseif Mom1(n) >= 70
        Mom1weights=(4*MECHANICSOFMATERIALS1_CUs);
    elseif Mom1(n)>=65
        Mom1weights=(3.5*MECHANICSOFMATERIALS1_CUs);
    elseif Mom1(n) >= 60
        Mom1weights=(3*MECHANICSOFMATERIALS1_CUs);
    elseif Mom1(n)>= 55
        Mom1weights=(2.5*MECHANICSOFMATERIALS1_CUs);
    elseif Mom1(n)>=50
        Mom1weights=(2*MECHANICSOFMATERIALS1_CUs);
    else
        Mom1weights=(0*MECHANICSOFMATERIALS1_CUs);
   end

   if Auto(n) >=80
        Autoweights=(5*AUTOCAD_Cus);
    elseif Auto(n) >= 75
        Autoweights=(4.5*AUTOCAD_Cus);
    elseif Auto(n) >= 70
        Autoweights=(4*AUTOCAD_Cus);
    elseif Auto(n)>=65
        Autoweights=(3.5*AUTOCAD_Cus);
    elseif Auto(n) >= 60
        Autoweights=(3*AUTOCAD_Cus);
    elseif Auto(n)>= 55
        Autoweights=(2.5*AUTOCAD_Cus);
    elseif Auto(n)>=50
        Autoweights=(2*AUTOCAD_Cus);
    else
        Autoweights=(0*AUTOCAD_Cus);
   end

    GPA2=((Math2weights+Autoweights+Mom1weights+Mech2weights+Prdctweights+Electecwieghts)/Total_CUS2);
    
    CGPA=(GPA1 + GPA2)/2;
    fprintf('The GPA1 of %s is %d\n',current_student,GPA1);
     fprintf('The GPA2 of %s is %d\n',current_student,GPA2);
    fprintf('The CGPA of %s is %d\n',current_student,CGPA);
    
    fprintf('working on %s is complete\n' ,current_student);
end

disp('::::::::::::::::END::::::::::::::::::::')
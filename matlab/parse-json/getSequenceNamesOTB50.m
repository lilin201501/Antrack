function [names] = getSequenceNamesOTB50(  )
%GETSEQUENCENAMES Summary of this function goes here
%   Detailed explanation goes here

seqs=configSeqs;

names = cell(length(seqs),1);

for i =1:length(seqs)
    names{i} = seqs{i}.name;
end

end


function seqs=configSeqs

seqVTD={struct('name','soccer','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/soccer/','startFrame',1,'endFrame',392,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','matrix','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/matrix/','startFrame',1,'endFrame',100,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','ironman','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/ironman/','startFrame',1,'endFrame',166,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','deer','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/deer/','startFrame',1,'endFrame',71,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','skating1','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/skating1/','startFrame',1,'endFrame',400,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','shaking','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/shaking/','startFrame',1,'endFrame',365,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','singer1','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/singer1/','startFrame',1,'endFrame',351,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','singer2','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/singer2/','startFrame',1,'endFrame',366,'nz',4,'ext','jpg','init_rect', [0,0,0,0])};

seqIVT={struct('name','carDark','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/CarDark/','startFrame',1,'endFrame',393,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','car4','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/car4/','startFrame',1,'endFrame',659,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','david','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/David/','startFrame',300,'endFrame',770,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','david2','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/david2/','startFrame',1,'endFrame',537,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...    
    struct('name','sylvester','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/sylvester/','startFrame',1,'endFrame',1345,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','trellis','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/Trellis/','startFrame',1,'endFrame',569,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','fish','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/fish/','startFrame',1,'endFrame',476,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','mhyang','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/mhyang/','startFrame',1,'endFrame',1490,'nz',4,'ext','jpg','init_rect', [0,0,0,0])};

seqOther={struct('name','coke','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/Coke/','startFrame',1,'endFrame',291,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','bolt','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/bolt/','startFrame',1,'endFrame',350,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','boy','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/boy/','startFrame',1,'endFrame',602,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','dudek','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/dudek/','startFrame',1,'endFrame',1145,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','crossing','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/crossing/','startFrame',1,'endFrame',120,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','couple','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/couple/','startFrame',1,'endFrame',140,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','football1','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/football1/','startFrame',1,'endFrame',74,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','jogging-1','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/jogging-1/','startFrame',1,'endFrame',307,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','jogging-2','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/jogging-2/','startFrame',1,'endFrame',307,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','doll','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/doll/','startFrame',1,'endFrame',3872,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','girl','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/girl/','startFrame',1,'endFrame',500,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','walking2','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/walking2/','startFrame',1,'endFrame',500,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','walking','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/walking/','startFrame',1,'endFrame',412,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','fleetface','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/fleetface/','startFrame',1,'endFrame',707,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','freeman1','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/freeman1/','startFrame',1,'endFrame',326,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','freeman3','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/freeman3/','startFrame',1,'endFrame',460,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','freeman4','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/freeman4/','startFrame',1,'endFrame',283,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','david3','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/david3/','startFrame',1,'endFrame',252,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','jumping','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/jumping/','startFrame',1,'endFrame',313,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','carScale','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/carScale/','startFrame',1,'endFrame',252,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','skiing','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/skiing/','startFrame',1,'endFrame',81,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','dog1','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/dog1/','startFrame',1,'endFrame',1350,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','suv','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/suv/','startFrame',1,'endFrame',945,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','motorRolling','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/motorRolling/','startFrame',1,'endFrame',164,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','mountainBike','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/mountainBike/','startFrame',1,'endFrame',228,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','lemming','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/lemming/','startFrame',1,'endFrame',1336,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','liquor','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/liquor/','startFrame',1,'endFrame',1741,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','woman','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/woman/','startFrame',1,'endFrame',597,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','faceocc1','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/faceocc1/','startFrame',1,'endFrame',892,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','faceocc2','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/faceocc2/','startFrame',1,'endFrame',812,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','basketball','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/basketball/','startFrame',1,'endFrame',725,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','football','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/football/','startFrame',1,'endFrame',362,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','subway','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/subway/','startFrame',1,'endFrame',175,'nz',4,'ext','jpg','init_rect', [0 0 0 0]),...    
    struct('name','tiger1','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/tiger1/','startFrame',1,'endFrame',354,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','tiger2','path','/Users/Ivan/Code/Tracking/Antrack/python/visual-tracking-benchmark/data/tiger2/','startFrame',1,'endFrame',365,'nz',4,'ext','jpg','init_rect', [0,0,0,0])};

seqs=[seqIVT,seqVTD,seqOther];

end
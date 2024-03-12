%%New version of PeGS using a modular format, Adapted from Jonathan
%%Kollmer's PeGS installation in matlab Github link by Carmen Lee
%%Began on June 24

%%Ideally, this script will call various modules included in this folder
%%and will only requre some user input values. These include the image
%%location, boundary (for the annulus data and airtable data from K.
%%Daniels lab at NCSU)

function PeGSModular(topDirectory, imageNames)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%User input values
%topDirectory = '/mnt/ncsudrive/c/cllee3/MyEno/DATA/jekollme/20160701/Steps/artificial/'
%topDirectory = '/eno/cllee3/DATA/esbilili/20160112reprocessed/' % location of image files
topDirectory = '/eno/cllee3/DATA/240226/run1/'
%topDirectory = '/Users/carmenlee/Desktop/20150731reprocesseduniaxial/'
% %topDirectory = './DATA/test/Step09/'
imageNames = '75Hz*.jpg' %image format and regex
frameidind = 15
%
files = dir([topDirectory,imageNames])
boundaryType = "annulus"; %if airtable use "airtable" if annulus use "annulus"
radiusRange = [40, 57];
%radiusRange = [45, 78]; %airtable

verbose = false;

if not(isfolder(append(topDirectory,'synthImg'))) %make a new folder with warped images
    mkdir(append(topDirectory,'synthImg'));
end
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%preprocess(topDirectory, imageNames, boundaryType, verbose);
'files done preprocessing'
%%
%particleDetect(topDirectory, imageNames, radiusRange, boundaryType, verbose);
'particles detected'
%%
%particleTrack(topDirectory, imageNames, boundaryType, frameidind, verbose);
'trajectories connected'
%%
%contactDetection(topDirectory, imageNames, boundaryType,frameidind, verbose)
'contacts detected'
%%
%diskSolve(topDirectory, imageNames, boundaryType, verbose)
%%
%newtonize(topDirectory, imageNames, boundaryType, verbose)
%%
adjacencyMatrix(topDirectory, imageNames, boundaryType, frameidind,verbose)
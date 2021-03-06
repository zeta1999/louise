:-module(learning_curve_configuration, [copy_plotting_scripts/1
                                      ,logging_directory/1
                                      ,plotting_directory/1
                                      ,r_data_file/1
                                      ,learning_curve_time_limit/1
                                      ]).

/** <module> Configuration options for learning rate experiments.
*/

:-dynamic copy_plotting_scripts/1
         ,logging_directory/1
         ,plotting_directory/1
         ,r_data_file/1
         ,learning_curve_time_limit/1.

%!      copy_plotting_scripts(?Copy) is semidet.
%
%       Whether to copy plotting scripts to plotting directory.
%
%       Copy is either "false", or the path to the root directory where
%       plotting scripts for learning rate experiments are placed.
%
%       The R plotting scripts used to plot results of learning rate
%       experiments need to be in the same directory as the R data files
%       generated by learning_curve.pl. This option determines whether
%       those scripts will be automatically copied from their Root
%       directory to the current plotting_directory/1.
%
%       If Copy is a path, the R plotting scripts are copied to the
%       plotting directory. If Copy is false, they are not.
%
%       Copy can be a term Alias(Relative) (e.g. scripts(plotting) etc).
%       This will be expanded to an absolute path with a call to
%       absolute_file_name/3.
%
%       The R plotting scripts are copied using copy_directory/2. This
%       copies the full contents of the plotting directory to directory
%       specified in Copy. This is to simplify selecting what to copy
%       (i.e. everything is copied, simple dimple).
%
%copy_plotting_scripts(false).
copy_plotting_scripts(scripts(learning_curve/plotting)).


%!	logging_directory(?Directory) is semidet.
%
%	Directory to place learning rate experiment logs.
%
logging_directory('output/learning_curve/').


%!	plotting_directory(?Directory) is semidet.
%
%	Directory to place R data files.
%
plotting_directory('output/learning_curve/').


%!	r_data_file(?Path) is semidet.
%
%	Path to the output file for R plotting script data.
%
%	Paths is relative to the louise/ root directory.
%
r_data_file('learning_curve_data.r').


%!	learning_curve_time_limit(?Limit) is semidet.
%
%	Time Limit after which a learning attempt will fail.
%
learning_curve_time_limit(300).

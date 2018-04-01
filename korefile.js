// korefile.js is used by Kha SDK, see test/kha

var project = new Project('linc_imgui', __dirname);

project.addFile('linc/**');
project.addIncludeDir('linc');
project.addFile('lib/imgui/*.cpp');
project.addIncludeDir('lib/imgui');

resolve(project);

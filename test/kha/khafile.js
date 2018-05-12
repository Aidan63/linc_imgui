let project = new Project('ImGuiDemo');
project.addSources('Sources');
project.addShaders('Sources/Shaders/**');
project.addAssets('Assets/**');

// Relative path used only to avoid circular dependencies, like
// linc_imgui/test/kha/Libraries/linc_imgui
// So, feel free to copy linc_imgui into Libraries directory and use
// project.addLibrary('linc_imgui');
project.addLibrary('../../../../linc_imgui');

resolve(project);

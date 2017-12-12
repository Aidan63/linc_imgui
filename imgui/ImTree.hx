package imgui;

import cpp.Pointer;
import cpp.ConstCharStar;
import cpp.RawPointer;
import cpp.VarArg;
import cpp.RawConstPointer;
import imgui.ImGui;

@:include('linc_imgui.h')
extern class ImTree
{
    /**
      if returning 'true' the node is open and the tree id is pushed into the id stack. user is responsible for calling TreePop().
     */
    @:native('ImGui::TreeNode') static function treeNode(_label : ConstCharStar) : Bool;

    /**
      read the FAQ about why and how to use ID. to align arbitrary text at the same level as a TreeNode() you can use Bullet().
     */
    @:overload(function(_strId : ConstCharStar, _fmt : ConstCharStar) : Bool {})
    @:native('ImGui::TreeNode') static function treeNodeId(_ptrId : RawConstPointer<cpp.Void>, _fmt : ConstCharStar) : Bool;

    @:overload(function(_label : ConstCharStar) : Bool {})
    @:native('ImGui::TreeNodeEx') static function treeNodeEx(_label : ConstCharStar, _flags : ImGuiTreeNodeFlags) : Bool;

    @:overload(function(_strId : ConstCharStar, _flags : ImGuiTreeNodeFlags, _fmt : ConstCharStar) : Bool {})
    @:native('ImGui::TreeNodeEx') static function treeNodeExId(_ptrId : RawConstPointer<cpp.Void>, _flags : ImGuiTreeNodeFlags, _fmt : ConstCharStar) : Bool;

    /**
      Indent()+PushId(). Already called by TreeNode() when returning true, but you can call Push/Pop yourself for layout purpose
     */
    @:overload(function(_strId : ConstCharStar) : Void {})
    @:native('ImGui::TreePush') static function treePush(_ptrId : RawConstPointer<cpp.Void>) : Void;

    /**
      ~ Unindent()+PopId()
     */
    @:native('ImGui::TreePop') static function treePop() : Void;

    /**
      advance cursor x position by GetTreeNodeToLabelSpacing()
     */
    @:native('ImGui::TreeAdvanceToLabelPos') static function treeAdvanceToLabelPos() : Void;

    /**
      horizontal distance preceding label when using TreeNode*() or Bullet() == (g.FontSize + style.FramePadding.x*2) for a regular unframed TreeNode
     */
    @:native('ImGui::GetTreeNodeToLabelSpacing') static function getTreeNodeToLabelSpacing() : Float;

    /**
      set next TreeNode/CollapsingHeader open state.
     */
    @:overload(function(_isOpen : Bool) : Void {})
    @:native('ImGui::SetNextTreeNodeOpen') static function setNextTreeNodeOpen(_isOpen : Bool, _cond : ImGuiCond) : Void;

    /**
      if returning 'true' the header is open. doesn't indent nor push on ID stack. user doesn't have to call TreePop().
     */
    @:overload(function(_label : ConstCharStar) : Bool {})
    @:native('ImGui::CollapsingHeader') static function collapsingHeader(_label : ConstCharStar, _flags : ImGuiTreeNodeFlags) : Bool;

    /**
      when 'p_open' isn't NULL, display an additional small close button on upper right of the header   
     */
    @:overload(function(_label : ConstCharStar, _pOpen : Pointer<Bool>) : Bool {})
    @:native('ImGui::CollapsingHeader') static function collapsingHeaderPtr(_label : ConstCharStar, _pOpen : Pointer<Bool>, _flags : ImGuiTreeNodeFlags) : Bool;
}

/**
  Flags for ImGui::TreeNodeEx(), ImGui::CollapsingHeader*()
 */
@:enum abstract ImGuiTreeNodeFlags(Int) from Int to Int
{
    /**
      Draw as selected
     */
    var Selected = 1 << 0;

    /**
      Full colored frame (e.g. for CollapsingHeader)
     */
    var Framed = 1 << 1;

    /**
      Hit testing to allow subsequent widgets to overlap this one
     */
    var AllowOverlapMode = 1 << 2;

    /**
      Don't do a TreePush() when open (e.g. for CollapsingHeader) = no extra indent nor pushing on ID stack
     */
    var NoTreePushOnOpen = 1 << 3;
    
    /**
      Don't automatically and temporarily open node when Logging is active (by default logging will automatically open tree nodes)
     */
    var NoAutoOpenOnLog = 1 << 4;

    /**
      Default node to be open
     */
    var DefaultOpen = 1 << 5;

    /**
      Need double-click to open node
     */
    var OpenOnDoubleClick = 1 << 6;

    /**
      Only open when clicking on the arrow part. If ImGuiTreeNodeFlags_OpenOnDoubleClick is also set, single-click arrow or double-click all box to open.
     */
    var OpenOnArrow = 1 << 7;

    /**
      No collapsing, no arrow (use as a convenience for leaf nodes).
     */
    var Leaf = 1 << 8;

    /**
      Display a bullet instead of arrow
     */
    var Bullet = 1 << 9;

    /**
      Use FramePadding (even for an unframed text node) to vertically align text baseline to regular widget height. Equivalent to calling AlignTextToFramePadding().
     */
    var FramePadding = 1 << 10;

    //@:native('ImGuITreeNodeFlags_SpanAllAvailWidth') var SpanAllAvailWidth; // FIXME: TODO: Extend hit box horizontally even if not framed
    //@:native('ImGuiTreeNodeFlags_NoScrollOnOpen') var NoScrollOnOpen; // FIXME: TODO: Disable automatic scroll on TreePop() if node got just open and contents is not visible

    var CollapsingHeader = Framed | NoAutoOpenOnLog;
}

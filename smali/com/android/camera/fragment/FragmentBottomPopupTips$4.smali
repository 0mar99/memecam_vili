.class public Lcom/android/camera/fragment/FragmentBottomPopupTips$4;
.super Ljava/lang/Object;
.source "FragmentBottomPopupTips.java"

# interfaces
.implements Lcom/android/camera/ui/ColorImageView$GestureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips;->applyItem(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

.field public final synthetic val$gestureListener:Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;

.field public final synthetic val$item:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->val$item:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    iput-object p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->val$gestureListener:Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canTouch()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->checkClick()Z

    move-result p0

    return p0
.end method

.method public startScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->val$item:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isHideBySelf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->onTipImageClick()V

    :cond_0
    return-void
.end method

.method public stopScroll(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->val$gestureListener:Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;->onUp(Landroid/view/MotionEvent;)V

    return-void
.end method

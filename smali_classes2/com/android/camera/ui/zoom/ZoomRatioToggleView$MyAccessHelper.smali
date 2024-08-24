.class public Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "ZoomRatioToggleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/zoom/ZoomRatioToggleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAccessHelper"
.end annotation


# instance fields
.field public mAccessRect:Landroid/graphics/Rect;

.field public mSelectIndex:I

.field public final synthetic this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Landroid/view/View;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    .line 3
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;->mAccessRect:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Landroid/view/View;Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-static {v0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->access$600(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;->mSelectIndex:I

    return p1
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-ne p2, p3, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-static {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->access$1000(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;->mSelectIndex:I

    if-ltz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;->mAccessRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;->mAccessRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    .line 5
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    const/16 p0, 0x10

    .line 6
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    .line 9
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 13
    new-instance p1, Landroid/graphics/Rect;

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    invoke-direct {p1, v1, v1, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 14
    new-instance p0, Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

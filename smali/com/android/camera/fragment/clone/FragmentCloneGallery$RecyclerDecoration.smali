.class public Lcom/android/camera/fragment/clone/FragmentCloneGallery$RecyclerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FragmentCloneGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/clone/FragmentCloneGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecyclerDecoration"
.end annotation


# instance fields
.field public horizontalPadding:I

.field public isRTL:Ljava/lang/Boolean;

.field public marginStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$RecyclerDecoration;->isRTL:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$RecyclerDecoration;->horizontalPadding:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$RecyclerDecoration;->marginStart:I

    .line 5
    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$RecyclerDecoration;->isRTL:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    iget p4, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$RecyclerDecoration;->horizontalPadding:I

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$RecyclerDecoration;->isRTL:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$RecyclerDecoration;->horizontalPadding:I

    iget p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$RecyclerDecoration;->marginStart:I

    invoke-virtual {p1, p2, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 5
    :cond_0
    iget p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$RecyclerDecoration;->marginStart:I

    iget p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$RecyclerDecoration;->horizontalPadding:I

    invoke-virtual {p1, p2, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

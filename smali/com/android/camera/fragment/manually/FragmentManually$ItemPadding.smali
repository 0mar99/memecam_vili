.class public Lcom/android/camera/fragment/manually/FragmentManually$ItemPadding;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FragmentManually.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/manually/FragmentManually;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemPadding"
.end annotation


# instance fields
.field public padding:I

.field public paddingForFive:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually$ItemPadding;->paddingForFive:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703dc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually$ItemPadding;->padding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x5

    if-ne p2, p4, :cond_0

    .line 2
    iget p0, p0, Lcom/android/camera/fragment/manually/FragmentManually$ItemPadding;->paddingForFive:I

    invoke-virtual {p1, p0, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/manually/FragmentManually$ItemPadding;->padding:I

    invoke-virtual {p1, p0, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

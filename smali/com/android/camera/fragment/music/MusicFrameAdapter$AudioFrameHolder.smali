.class public Lcom/android/camera/fragment/music/MusicFrameAdapter$AudioFrameHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MusicFrameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/music/MusicFrameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioFrameHolder"
.end annotation


# instance fields
.field public mItemView:Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;

.field public final synthetic this$0:Lcom/android/camera/fragment/music/MusicFrameAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/music/MusicFrameAdapter;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/MusicFrameAdapter$AudioFrameHolder;->this$0:Lcom/android/camera/fragment/music/MusicFrameAdapter;

    .line 2
    new-instance p1, Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;

    iput-object p1, p0, Lcom/android/camera/fragment/music/MusicFrameAdapter$AudioFrameHolder;->mItemView:Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0805e3

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setWidth(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/MusicFrameAdapter$AudioFrameHolder;->mItemView:Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;->setWidth(I)V

    return-void
.end method

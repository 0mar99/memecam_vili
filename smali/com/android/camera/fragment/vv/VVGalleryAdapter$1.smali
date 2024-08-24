.class public Lcom/android/camera/fragment/vv/VVGalleryAdapter$1;
.super Ljava/lang/Object;
.source "VVGalleryAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/VVGalleryAdapter;->configItemState(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

.field public final synthetic val$vvItem:Lcom/android/camera/fragment/vv/VVItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/VVGalleryAdapter;Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter$1;->this$0:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter$1;->val$vvItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter$1;->val$vvItem:Lcom/android/camera/fragment/vv/VVItem;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter$1;->this$0:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter$1;->val$vvItem:Lcom/android/camera/fragment/vv/VVItem;

    iget p0, p0, Lcom/android/camera/fragment/vv/VVItem;->index:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

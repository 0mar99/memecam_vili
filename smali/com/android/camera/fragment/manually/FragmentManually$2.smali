.class public Lcom/android/camera/fragment/manually/FragmentManually$2;
.super Ljava/lang/Object;
.source "FragmentManually.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/manually/FragmentManually;->notifyDataSetChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/manually/FragmentManually;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/manually/FragmentManually;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually$2;->this$0:Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually$2;->this$0:Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-static {v0}, Lcom/android/camera/fragment/manually/FragmentManually;->access$000(Lcom/android/camera/fragment/manually/FragmentManually;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually$2;->this$0:Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-static {v0}, Lcom/android/camera/fragment/manually/FragmentManually;->access$000(Lcom/android/camera/fragment/manually/FragmentManually;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually$2;->this$0:Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-static {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->access$000(Lcom/android/camera/fragment/manually/FragmentManually;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

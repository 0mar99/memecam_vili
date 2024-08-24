.class public Lcom/android/camera/fragment/AsyncInflaterManager$2;
.super Ljava/lang/Object;
.source "AsyncInflaterManager.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/AsyncInflaterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/AsyncInflaterManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/AsyncInflaterManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/AsyncInflaterManager$2;->this$0:Lcom/android/camera/fragment/AsyncInflaterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/AsyncInflaterManager$2;->this$0:Lcom/android/camera/fragment/AsyncInflaterManager;

    invoke-static {v0}, Lcom/android/camera/fragment/AsyncInflaterManager;->access$100(Lcom/android/camera/fragment/AsyncInflaterManager;)Lcom/android/camera/fragment/AsyncInflaterManager$ViewStubInflateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/AsyncInflaterManager$2;->this$0:Lcom/android/camera/fragment/AsyncInflaterManager;

    invoke-static {p0}, Lcom/android/camera/fragment/AsyncInflaterManager;->access$100(Lcom/android/camera/fragment/AsyncInflaterManager;)Lcom/android/camera/fragment/AsyncInflaterManager$ViewStubInflateListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/camera/fragment/AsyncInflaterManager$ViewStubInflateListener;->OnInflateFinished(Landroid/view/ViewStub;Landroid/view/View;)Landroid/view/View;

    :cond_0
    return-void
.end method

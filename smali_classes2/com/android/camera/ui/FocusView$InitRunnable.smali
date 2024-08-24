.class public Lcom/android/camera/ui/FocusView$InitRunnable;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitRunnable"
.end annotation


# instance fields
.field public mFocusView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/FocusView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FocusView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$InitRunnable;->mFocusView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FocusView$InitRunnable;->mFocusView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/FocusView;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[WTP]drawableInitialize: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0}, Lcom/android/camera/ui/FocusView;->access$1700(Lcom/android/camera/ui/FocusView;)V

    .line 4
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[WTP]drawableInitialize: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.class public Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$AnimEndTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolmeBaseOnSubScribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimEndTransitionListener"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AnimEndTransitionListen"


# instance fields
.field public final weakReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$AnimEndTransitionListener;->weakReference:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$AnimEndTransitionListener;-><init>(Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;)V

    return-void
.end method

.method private onEndAction()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$AnimEndTransitionListener;->weakReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;

    if-nez p0, :cond_0

    const-string p0, "AnimEndTransitionListen"

    const-string/jumbo v0, "onComplete: subScribe is null, returning."

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->onAnimationEnd()V

    .line 4
    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->access$100(Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;)Lio/reactivex/CompletableEmitter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->access$100(Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;)Lio/reactivex/CompletableEmitter;

    move-result-object p0

    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$AnimEndTransitionListener;->onEndAction()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$AnimEndTransitionListener;->onEndAction()V

    return-void
.end method

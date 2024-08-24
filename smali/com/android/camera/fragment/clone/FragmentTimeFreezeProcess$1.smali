.class public Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess$1;
.super Ljava/lang/Object;
.source "FragmentTimeFreezeProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->lambda$updateCaptureMessage$2(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess$1;->this$0:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess$1;->this$0:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHintPined:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->hideCaptureMessage()V

    return-void
.end method

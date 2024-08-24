.class public Lcom/android/camera/ui/MotionDetectionView$3;
.super Ljava/lang/Object;
.source "MotionDetectionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/MotionDetectionView;->setMotionDetectionViewAlpha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/MotionDetectionView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/MotionDetectionView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView$3;->this$0:Lcom/android/camera/ui/MotionDetectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView$3;->this$0:Lcom/android/camera/ui/MotionDetectionView;

    invoke-virtual {p0}, Lcom/android/camera/ui/MotionDetectionView;->doAnimatorWhenSaveSuccess()V

    return-void
.end method

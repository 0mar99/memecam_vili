.class public Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf$1;
.super Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;
.source "MiThemeOperationTabIf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->popupMoreMode(FFFLcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

.field public final synthetic val$listener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;


# direct methods
.method public constructor <init>(Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf$1;->this$0:Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    iput-object p3, p0, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf$1;->val$listener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    invoke-direct {p0, p2}, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;-><init>(Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf$1;->val$listener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p0, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p3, p1

    .line 2
    invoke-interface {p0, p3}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onUpdate(F)V

    :cond_0
    return-void
.end method

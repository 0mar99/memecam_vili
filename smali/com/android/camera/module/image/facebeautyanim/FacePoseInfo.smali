.class public Lcom/android/camera/module/image/facebeautyanim/FacePoseInfo;
.super Ljava/lang/Object;
.source "FacePoseInfo.java"


# instance fields
.field public facePoseAngle:I


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    aget p1, p1, v0

    iput p1, p0, Lcom/android/camera/module/image/facebeautyanim/FacePoseInfo;->facePoseAngle:I

    return-void
.end method


# virtual methods
.method public getFacePose()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/image/facebeautyanim/FacePoseInfo;->facePoseAngle:I

    return p0
.end method

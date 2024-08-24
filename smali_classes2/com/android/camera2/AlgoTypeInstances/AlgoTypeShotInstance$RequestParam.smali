.class public final Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;
.super Ljava/lang/Object;
.source "AlgoTypeShotInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestParam"
.end annotation


# instance fields
.field public builder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public isLegacySat:Z

.field public isRoleSat:Z

.field public isSatMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

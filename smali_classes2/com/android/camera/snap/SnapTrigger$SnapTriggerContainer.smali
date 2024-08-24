.class public Lcom/android/camera/snap/SnapTrigger$SnapTriggerContainer;
.super Ljava/lang/Object;
.source "SnapTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapTriggerContainer"
.end annotation


# static fields
.field public static sInstance:Lcom/android/camera/snap/SnapTrigger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/snap/SnapTrigger;

    invoke-direct {v0}, Lcom/android/camera/snap/SnapTrigger;-><init>()V

    sput-object v0, Lcom/android/camera/snap/SnapTrigger$SnapTriggerContainer;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/camera/snap/SnapTrigger;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/snap/SnapTrigger$SnapTriggerContainer;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    return-object v0
.end method

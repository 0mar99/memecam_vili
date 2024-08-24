.class public Lcom/android/camera/BatteryDetector$InstanceHolder;
.super Ljava/lang/Object;
.source "BatteryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BatteryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# static fields
.field public static sInstance:Lcom/android/camera/BatteryDetector;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/BatteryDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/BatteryDetector;-><init>(Lcom/android/camera/BatteryDetector$1;)V

    sput-object v0, Lcom/android/camera/BatteryDetector$InstanceHolder;->sInstance:Lcom/android/camera/BatteryDetector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/android/camera/BatteryDetector;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/BatteryDetector$InstanceHolder;->sInstance:Lcom/android/camera/BatteryDetector;

    return-object v0
.end method

.class public Lcom/xiaomi/camera/MIVICaptureManager$Holder;
.super Ljava/lang/Object;
.source "MIVICaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/MIVICaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static INSTANCE:Lcom/xiaomi/camera/MIVICaptureManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/camera/MIVICaptureManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/MIVICaptureManager;-><init>(Lcom/xiaomi/camera/MIVICaptureManager$1;)V

    sput-object v0, Lcom/xiaomi/camera/MIVICaptureManager$Holder;->INSTANCE:Lcom/xiaomi/camera/MIVICaptureManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

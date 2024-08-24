.class public Lcom/xiaomi/camera/mivi/ImageReceiverFactory$Holder;
.super Ljava/lang/Object;
.source "ImageReceiverFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/mivi/ImageReceiverFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static INSTANCE:Lcom/xiaomi/camera/mivi/ImageReceiverFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;-><init>(Lcom/xiaomi/camera/mivi/ImageReceiverFactory$1;)V

    sput-object v0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory$Holder;->INSTANCE:Lcom/xiaomi/camera/mivi/ImageReceiverFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

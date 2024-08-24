.class public Lcom/xiaomi/camera/isp/IspRequest;
.super Ljava/lang/Object;
.source "IspRequest.java"


# instance fields
.field public cropRegion:[I

.field public flipMode:I

.field public functionType:I

.field public inputBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public orientation:I

.field public remosaic:I

.field public requestNumber:I

.field public settings:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(IILandroid/os/Parcelable;Ljava/util/ArrayList;[IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspBuffer;",
            ">;[IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/xiaomi/camera/isp/IspRequest;->orientation:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/xiaomi/camera/isp/IspRequest;->remosaic:I

    .line 4
    iput p1, p0, Lcom/xiaomi/camera/isp/IspRequest;->requestNumber:I

    .line 5
    iput p2, p0, Lcom/xiaomi/camera/isp/IspRequest;->flipMode:I

    .line 6
    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspRequest;->settings:Landroid/os/Parcelable;

    .line 7
    iput-object p4, p0, Lcom/xiaomi/camera/isp/IspRequest;->inputBuffers:Ljava/util/ArrayList;

    .line 8
    iput-object p5, p0, Lcom/xiaomi/camera/isp/IspRequest;->cropRegion:[I

    .line 9
    iput p6, p0, Lcom/xiaomi/camera/isp/IspRequest;->functionType:I

    .line 10
    iput p7, p0, Lcom/xiaomi/camera/isp/IspRequest;->orientation:I

    .line 11
    iput p8, p0, Lcom/xiaomi/camera/isp/IspRequest;->remosaic:I

    return-void
.end method

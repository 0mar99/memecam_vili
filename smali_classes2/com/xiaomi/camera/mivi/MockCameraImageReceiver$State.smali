.class public Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$State;
.super Ljava/lang/Object;
.source "MockCameraImageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "State"
.end annotation


# static fields
.field public static final CREATING_SESSION:I = 0x3

.field public static final FINISH:I = 0x6

.field public static final IDLE:I = 0x0

.field public static final OPENED:I = 0x2

.field public static final OPENNING:I = 0x1

.field public static final REQUEST:I = 0x5

.field public static final SESSION_READY:I = 0x4


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$State;->this$0:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

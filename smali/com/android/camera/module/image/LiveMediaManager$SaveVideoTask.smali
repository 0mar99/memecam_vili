.class public final Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;
.super Ljava/lang/Object;
.source "LiveMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/image/LiveMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SaveVideoTask"
.end annotation


# instance fields
.field public contentValues:Landroid/content/ContentValues;

.field public final synthetic this$0:Lcom/android/camera/module/image/LiveMediaManager;

.field public uri:Landroid/net/Uri;

.field public videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/LiveMediaManager;Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->this$0:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->videoPath:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->contentValues:Landroid/content/ContentValues;

    .line 4
    iput-object p2, p0, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/image/LiveMediaManager;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->this$0:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->videoPath:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->contentValues:Landroid/content/ContentValues;

    return-void
.end method

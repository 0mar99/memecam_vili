.class public Lcom/android/camera/external/mivi/MIVIServiceConnector$Holder;
.super Ljava/lang/Object;
.source "MIVIServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/external/mivi/MIVIServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static instance:Lcom/android/camera/external/mivi/MIVIServiceConnector;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/external/mivi/MIVIServiceConnector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/external/mivi/MIVIServiceConnector;-><init>(Lcom/android/camera/external/mivi/MIVIServiceConnector$1;)V

    sput-object v0, Lcom/android/camera/external/mivi/MIVIServiceConnector$Holder;->instance:Lcom/android/camera/external/mivi/MIVIServiceConnector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

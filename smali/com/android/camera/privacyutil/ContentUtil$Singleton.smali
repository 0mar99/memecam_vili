.class public Lcom/android/camera/privacyutil/ContentUtil$Singleton;
.super Ljava/lang/Object;
.source "ContentUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/privacyutil/ContentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Singleton"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/camera/privacyutil/ContentUtil;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/privacyutil/ContentUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/privacyutil/ContentUtil;-><init>(Lcom/android/camera/privacyutil/ContentUtil$1;)V

    sput-object v0, Lcom/android/camera/privacyutil/ContentUtil$Singleton;->INSTANCE:Lcom/android/camera/privacyutil/ContentUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;
.super Ljava/lang/Object;
.source "FragmentLiveSpeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/live/FragmentLiveSpeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveSpeedItem"
.end annotation


# instance fields
.field public mTextId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;->mTextId:I

    return-void
.end method


# virtual methods
.method public getTextId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;->mTextId:I

    return p0
.end method

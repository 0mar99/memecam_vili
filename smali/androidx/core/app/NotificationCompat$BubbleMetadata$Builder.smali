.class public final Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mDeleteIntent:Landroid/app/PendingIntent;

.field public mDesiredHeight:I

.field public mDesiredHeightResId:I

.field public mFlags:I

.field public mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setFlag(IZ)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    :goto_0
    return-object p0
.end method


# virtual methods
.method public build()Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 9

    .line 1
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 2
    iget-object v3, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v3, :cond_0

    .line 3
    new-instance v8, Landroidx/core/app/NotificationCompat$BubbleMetadata;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iget v4, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    iget v5, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    iget v6, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/core/app/NotificationCompat$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILandroidx/core/app/NotificationCompat$1;)V

    return-object v8

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must supply an icon for the bubble"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must supply pending intent to bubble"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAutoExpandBubble(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setFlag(IZ)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setDesiredHeight(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    .line 2
    iput v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    return-object p0
.end method

.method public setDesiredHeightResId(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    return-object p0
.end method

.method public setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "When using bitmap based icons, Bubbles require TYPE_ADAPTIVE_BITMAP, please use IconCompat#createWithAdaptiveBitmap instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bubbles require non-null icon"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bubble requires non-null pending intent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSuppressNotification(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setFlag(IZ)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    return-object p0
.end method

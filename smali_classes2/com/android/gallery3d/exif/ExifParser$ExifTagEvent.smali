.class public Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifTagEvent"
.end annotation


# instance fields
.field public isRequested:Z

.field public tag:Lcom/android/gallery3d/exif/ExifTag;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/exif/ExifTag;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/gallery3d/exif/ExifTag;

    .line 3
    iput-boolean p2, p0, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;->isRequested:Z

    return-void
.end method

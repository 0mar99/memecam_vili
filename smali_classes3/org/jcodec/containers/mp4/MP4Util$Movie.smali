.class public Lorg/jcodec/containers/mp4/MP4Util$Movie;
.super Ljava/lang/Object;
.source "MP4Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodec/containers/mp4/MP4Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Movie"
.end annotation


# instance fields
.field public ftyp:Lorg/jcodec/containers/mp4/boxes/FileTypeBox;

.field public moov:Lorg/jcodec/containers/mp4/boxes/MovieBox;


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/FileTypeBox;Lorg/jcodec/containers/mp4/boxes/MovieBox;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jcodec/containers/mp4/MP4Util$Movie;->ftyp:Lorg/jcodec/containers/mp4/boxes/FileTypeBox;

    .line 3
    iput-object p2, p0, Lorg/jcodec/containers/mp4/MP4Util$Movie;->moov:Lorg/jcodec/containers/mp4/boxes/MovieBox;

    return-void
.end method

.method public static synthetic access$000(Lorg/jcodec/containers/mp4/MP4Util$Movie;)Lorg/jcodec/containers/mp4/boxes/MovieBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jcodec/containers/mp4/MP4Util$Movie;->moov:Lorg/jcodec/containers/mp4/boxes/MovieBox;

    return-object p0
.end method


# virtual methods
.method public getFtyp()Lorg/jcodec/containers/mp4/boxes/FileTypeBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jcodec/containers/mp4/MP4Util$Movie;->ftyp:Lorg/jcodec/containers/mp4/boxes/FileTypeBox;

    return-object p0
.end method

.method public getMoov()Lorg/jcodec/containers/mp4/boxes/MovieBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jcodec/containers/mp4/MP4Util$Movie;->moov:Lorg/jcodec/containers/mp4/boxes/MovieBox;

    return-object p0
.end method

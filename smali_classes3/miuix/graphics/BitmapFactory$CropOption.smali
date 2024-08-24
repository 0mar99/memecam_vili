.class public Lmiuix/graphics/BitmapFactory$CropOption;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/graphics/BitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropOption"
.end annotation


# instance fields
.field public borderColor:I

.field public borderWidth:I

.field public rx:I

.field public ry:I

.field public srcBmpDrawingArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    .line 4
    iput p2, p0, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    .line 5
    iput p3, p0, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    .line 6
    iput p4, p0, Lmiuix/graphics/BitmapFactory$CropOption;->borderColor:I

    return-void
.end method

.method public constructor <init>(Lmiuix/graphics/BitmapFactory$CropOption;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget v0, p1, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    iput v0, p0, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    .line 9
    iget v0, p1, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    iput v0, p0, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    .line 10
    iget v0, p1, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    iput v0, p0, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    .line 11
    iget v0, p1, Lmiuix/graphics/BitmapFactory$CropOption;->borderColor:I

    iput v0, p0, Lmiuix/graphics/BitmapFactory$CropOption;->borderColor:I

    .line 12
    iget-object p1, p1, Lmiuix/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    iput-object p1, p0, Lmiuix/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    return-void
.end method

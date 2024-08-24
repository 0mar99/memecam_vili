.class public Lcom/xiaomi/renderengine/data/AnimRendererAttribute;
.super Lcom/xiaomi/renderengine/data/RendererAttribute;
.source "AnimRendererAttribute.java"


# instance fields
.field public mCapAnimAlphaPercent:F

.field public mCapAnimDuration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/data/RendererAttribute;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimDuration:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimAlphaPercent:F

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimDuration:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimAlphaPercent:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "[AnimRendererAttribute] mCapAnimDuration:Int, mCapAnimAlphaPercent:Float"

    return-object p0
.end method

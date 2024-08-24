.class public Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "KaleidoscopeRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer$KaleidoscopeEffectId;
    }
.end annotation


# static fields
.field public static final DOUBLE_FLIP:I = 0x3

.field public static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\n#define PI 3.1415926\nuniform int uMode;\nuniform vec2 uResolution;\nuniform float uRotation;\nuniform sampler2D sTexture;\nvarying vec2 vTexCoord;\nint H_FLIP = 0x01;\nint V_FLIP = 0x02;\nint DOUBLE_FLIP = 0x03;\nint QUADRUPLE = 0x04;\nint SEXTUPLE = 0x05;\nint REPEATED = 0x06;\nvec2 rotateUV(vec2 uv, float rotation, float mid){\n    float ratio = (uResolution.x / uResolution.y);\n    float s = sin ( rotation );\n    float c = cos ( rotation );\n    mat2 rotationMatrix = mat2( c, -s, s, c);\n    vec2 coord = vec2((uv.x - mid) * ratio ,(uv.y -mid)*1.0);\n    vec2 scaled = rotationMatrix * coord;\n    return vec2(scaled.x / ratio + mid,scaled.y + mid);\n}\nvec2 scaleUV(vec2 uv, float scale){\n    return (uv - vec2(0.5,0.5))*scale + vec2(0.5,0.5);\n}\nvoid main() {\n    vec2 p = vTexCoord;\n    vec2 uv = vTexCoord;\n    if(uMode==H_FLIP){\n        if(uv.x < 0.5){\n           p.x = 1.0 - p.x;\n        }\n        p.x -= 0.25;\n        gl_FragColor = texture2D(sTexture, p);\n    }\n    else if(uMode==V_FLIP){\n        if(uv.y > 0.5){\n           p.y = 1.0 - p.y;\n        }\n        p.y += 0.25;\n        gl_FragColor = texture2D(sTexture, p);\n    }\n    else if(uMode==DOUBLE_FLIP){\n        if(uv.x < 0.5){\n           p.x = 1.0 - p.x;\n        }\n        p.x -= 0.25;\n        if(uv.y > 0.5){\n           p.y = 1.0 - p.y;\n        }\n        p.y += 0.25;\n        gl_FragColor = texture2D(sTexture, p);\n    }\n    else if(uMode==QUADRUPLE){\n        float alpha = (uResolution.y - (uResolution.y - uResolution.x)/2.0)/uResolution.y;\n        float beta = ((uResolution.y - uResolution.x)/2.0)/uResolution.y;\n        if(p.y < p.x && p.x + p.y < 1.0){\n            //keep origin\n            //top\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y > p.x && p.x + p.y > 1.0){\n            //rotation PI\n            //bottom\n            uv = rotateUV(uv,PI,0.5);\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y < p.x && p.x + p.y > 1.0){\n            //rotation -90\n            //right\n            if(p.y > alpha)\n            {\n               uv = rotateUV(p,PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x += 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else if(p.y < beta)\n           {\n               uv = rotateUV(p,PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x -= 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else\n           {\n              uv = rotateUV(p,PI/2.0,0.5);\n              uv.y += 0.25;\n              gl_FragColor = texture2D(sTexture,uv);\n           }        }\n        else{\n            //rotation -90\n            //left\n            if(p.y > alpha)\n            {\n               uv = rotateUV(p,-PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x -= 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else if(p.y < beta)\n           {\n               uv = rotateUV(p,-PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x += 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else\n           {\n              uv = rotateUV(p,-PI/2.0,0.5);\n              uv.y += 0.25;\n              gl_FragColor = texture2D(sTexture,uv);\n           }        }\n    }\n    else if(uMode==SEXTUPLE){\n        float rot = PI/2.0 - atan(uResolution.y,uResolution.x)/2.0;\n        float alpha = atan(uResolution.y,uResolution.x)/2.0;\n        float beta = atan(uResolution.x,uResolution.y);\n        if(p.y < p.x && p.x + p.y < 1.0){\n            //keep origin\n            //top\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y > p.x && p.x + p.y > 1.0){\n            //rotation PI\n            //bottom\n            uv = rotateUV(uv,PI,0.5);\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y < p.x && p.x + p.y > 1.0){\n            //rotation -90\n            //right\n            if(p.y > 0.5){\n                uv = rotateUV(uv,PI - rot,0.5);\n            }\n            else{\n                uv = rotateUV(uv,rot,0.5);\n            }\n            uv = scaleUV(uv,cos(beta)/cos(alpha));\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else{\n            //rotation -90\n            //left\n            //\n            if(p.y > 0.5){\n                uv = rotateUV(uv,rot -PI,0.5);\n            }\n            else{\n                uv = rotateUV(uv,-rot,0.5);\n            }\n            uv = scaleUV(uv,cos(beta)/cos(alpha));\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n    }\n    else if(uMode==REPEATED){\n       float param = (1.0 - 0.9)/2.0;\n       vec2 bl = step(vec2(param,param),uv);\n       vec2 tr = step(vec2(param,param),vec2(1.0,1.0)-uv);\n       float param1 = (1.0 - 0.7)/2.0;\n       vec2 bl1 = step(vec2(param1,param1),uv);\n       vec2 tr1 = step(vec2(param1,param1),vec2(1.0,1.0)-uv);\n       float param2 = (1.0 - 0.4)/2.0;\n       vec2 bl2 = step(vec2(param2,param2),uv);\n       vec2 tr2 = step(vec2(param2,param2),vec2(1.0,1.0)-uv);\n       float xxx = bl.x*bl.y*tr.x*tr.y;\n       float xxx1 = bl1.x*bl1.y*tr1.x*tr1.y;\n       float xxx2 = bl2.x*bl2.y*tr2.x*tr2.y;\n       if(xxx < 0.5){\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n       else if(xxx >  0.5 && xxx1 < 0.5){\n           uv = scaleUV(uv,1.0/(1.0 - 2.0 * param));\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n       else if(xxx1 > 0.5 && xxx2 < 0.5){\n           uv = scaleUV(uv,1.0/(1.0 - 2.0 * param1));\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n       else{\n           uv = scaleUV(uv,1.0/(1.0 - 2.0 *param2));\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n    }    else{\n        gl_FragColor = texture2D(sTexture, uv);\n    }\n}"

.field public static final H_FLIP:I = 0x1

.field public static final KALEIDOSCOPE_1:Ljava/lang/String; = "1"

.field public static final KALEIDOSCOPE_2:Ljava/lang/String; = "2"

.field public static final KALEIDOSCOPE_3:Ljava/lang/String; = "3"

.field public static final KALEIDOSCOPE_4:Ljava/lang/String; = "4"

.field public static final KALEIDOSCOPE_5:Ljava/lang/String; = "5"

.field public static final KALEIDOSCOPE_6:Ljava/lang/String; = "6"

.field public static final KALEIDOSCOPE_NONE:Ljava/lang/String; = "0"

.field public static final QUADRUPLE:I = 0x4

.field public static final REPEATED:I = 0x6

.field public static final SEXTUPLE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "KaleidoscopeRenderer"

.field public static final TEXTURES:[F

.field public static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

.field public static final VERTICES:[F

.field public static final V_FLIP:I = 0x2


# instance fields
.field public mAttribute:Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;

.field public mAttributePositionH:I

.field public mAttributeTexCoorH:I

.field public mKaleidoscopeId:I

.field public mProgram:I

.field public mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field public mUniformMVPMatrixH:I

.field public mUniformModeHandle:I

.field public mUniformResolutionHandle:I

.field public mUniformSTMatrixH:I

.field public mUniformTextureH:I

.field public mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->VERTICES:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->TEXTURES:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/Renderer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    const/16 v0, 0x8

    .line 3
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    .line 4
    invoke-static {v0}, Lcom/xiaomi/renderengine/data/AttributeManager;->getAttribute(I)Lcom/xiaomi/renderengine/data/RendererAttribute;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;

    return-void
.end method

.method private convertToKaleidoscopeEffectId(Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "6"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :pswitch_1
    const-string p0, "5"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :pswitch_2
    const-string p0, "4"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :pswitch_3
    const-string p0, "3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :pswitch_4
    const-string p0, "2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v5

    goto :goto_1

    :pswitch_5
    const-string p0, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v5, :cond_5

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x6

    goto :goto_2

    :cond_2
    move v0, v5

    goto :goto_2

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public initAttributePointer()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->VERTICES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->TEXTURES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 5
    :cond_1
    iget v1, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttributePositionH:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget v7, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttributeTexCoorH:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    iget-object v12, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public initShader()V
    .locals 2

    const-string v0, "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

    const-string v1, "precision highp float;\n#define PI 3.1415926\nuniform int uMode;\nuniform vec2 uResolution;\nuniform float uRotation;\nuniform sampler2D sTexture;\nvarying vec2 vTexCoord;\nint H_FLIP = 0x01;\nint V_FLIP = 0x02;\nint DOUBLE_FLIP = 0x03;\nint QUADRUPLE = 0x04;\nint SEXTUPLE = 0x05;\nint REPEATED = 0x06;\nvec2 rotateUV(vec2 uv, float rotation, float mid){\n    float ratio = (uResolution.x / uResolution.y);\n    float s = sin ( rotation );\n    float c = cos ( rotation );\n    mat2 rotationMatrix = mat2( c, -s, s, c);\n    vec2 coord = vec2((uv.x - mid) * ratio ,(uv.y -mid)*1.0);\n    vec2 scaled = rotationMatrix * coord;\n    return vec2(scaled.x / ratio + mid,scaled.y + mid);\n}\nvec2 scaleUV(vec2 uv, float scale){\n    return (uv - vec2(0.5,0.5))*scale + vec2(0.5,0.5);\n}\nvoid main() {\n    vec2 p = vTexCoord;\n    vec2 uv = vTexCoord;\n    if(uMode==H_FLIP){\n        if(uv.x < 0.5){\n           p.x = 1.0 - p.x;\n        }\n        p.x -= 0.25;\n        gl_FragColor = texture2D(sTexture, p);\n    }\n    else if(uMode==V_FLIP){\n        if(uv.y > 0.5){\n           p.y = 1.0 - p.y;\n        }\n        p.y += 0.25;\n        gl_FragColor = texture2D(sTexture, p);\n    }\n    else if(uMode==DOUBLE_FLIP){\n        if(uv.x < 0.5){\n           p.x = 1.0 - p.x;\n        }\n        p.x -= 0.25;\n        if(uv.y > 0.5){\n           p.y = 1.0 - p.y;\n        }\n        p.y += 0.25;\n        gl_FragColor = texture2D(sTexture, p);\n    }\n    else if(uMode==QUADRUPLE){\n        float alpha = (uResolution.y - (uResolution.y - uResolution.x)/2.0)/uResolution.y;\n        float beta = ((uResolution.y - uResolution.x)/2.0)/uResolution.y;\n        if(p.y < p.x && p.x + p.y < 1.0){\n            //keep origin\n            //top\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y > p.x && p.x + p.y > 1.0){\n            //rotation PI\n            //bottom\n            uv = rotateUV(uv,PI,0.5);\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y < p.x && p.x + p.y > 1.0){\n            //rotation -90\n            //right\n            if(p.y > alpha)\n            {\n               uv = rotateUV(p,PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x += 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else if(p.y < beta)\n           {\n               uv = rotateUV(p,PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x -= 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else\n           {\n              uv = rotateUV(p,PI/2.0,0.5);\n              uv.y += 0.25;\n              gl_FragColor = texture2D(sTexture,uv);\n           }        }\n        else{\n            //rotation -90\n            //left\n            if(p.y > alpha)\n            {\n               uv = rotateUV(p,-PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x -= 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else if(p.y < beta)\n           {\n               uv = rotateUV(p,-PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x += 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else\n           {\n              uv = rotateUV(p,-PI/2.0,0.5);\n              uv.y += 0.25;\n              gl_FragColor = texture2D(sTexture,uv);\n           }        }\n    }\n    else if(uMode==SEXTUPLE){\n        float rot = PI/2.0 - atan(uResolution.y,uResolution.x)/2.0;\n        float alpha = atan(uResolution.y,uResolution.x)/2.0;\n        float beta = atan(uResolution.x,uResolution.y);\n        if(p.y < p.x && p.x + p.y < 1.0){\n            //keep origin\n            //top\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y > p.x && p.x + p.y > 1.0){\n            //rotation PI\n            //bottom\n            uv = rotateUV(uv,PI,0.5);\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y < p.x && p.x + p.y > 1.0){\n            //rotation -90\n            //right\n            if(p.y > 0.5){\n                uv = rotateUV(uv,PI - rot,0.5);\n            }\n            else{\n                uv = rotateUV(uv,rot,0.5);\n            }\n            uv = scaleUV(uv,cos(beta)/cos(alpha));\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else{\n            //rotation -90\n            //left\n            //\n            if(p.y > 0.5){\n                uv = rotateUV(uv,rot -PI,0.5);\n            }\n            else{\n                uv = rotateUV(uv,-rot,0.5);\n            }\n            uv = scaleUV(uv,cos(beta)/cos(alpha));\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n    }\n    else if(uMode==REPEATED){\n       float param = (1.0 - 0.9)/2.0;\n       vec2 bl = step(vec2(param,param),uv);\n       vec2 tr = step(vec2(param,param),vec2(1.0,1.0)-uv);\n       float param1 = (1.0 - 0.7)/2.0;\n       vec2 bl1 = step(vec2(param1,param1),uv);\n       vec2 tr1 = step(vec2(param1,param1),vec2(1.0,1.0)-uv);\n       float param2 = (1.0 - 0.4)/2.0;\n       vec2 bl2 = step(vec2(param2,param2),uv);\n       vec2 tr2 = step(vec2(param2,param2),vec2(1.0,1.0)-uv);\n       float xxx = bl.x*bl.y*tr.x*tr.y;\n       float xxx1 = bl1.x*bl1.y*tr1.x*tr1.y;\n       float xxx2 = bl2.x*bl2.y*tr2.x*tr2.y;\n       if(xxx < 0.5){\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n       else if(xxx >  0.5 && xxx1 < 0.5){\n           uv = scaleUV(uv,1.0/(1.0 - 2.0 * param));\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n       else if(xxx1 > 0.5 && xxx2 < 0.5){\n           uv = scaleUV(uv,1.0/(1.0 - 2.0 * param1));\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n       else{\n           uv = scaleUV(uv,1.0/(1.0 - 2.0 *param2));\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n    }    else{\n        gl_FragColor = texture2D(sTexture, uv);\n    }\n}"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mUniformMVPMatrixH:I

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mUniformSTMatrixH:I

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttributePositionH:I

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttributeTexCoorH:I

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mUniformTextureH:I

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    const-string v1, "uMode"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mUniformModeHandle:I

    .line 9
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    const-string v1, "uResolution"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mUniformResolutionHandle:I

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": mProgram = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initShaderValue(ILcom/xiaomi/renderengine/gl/GLState;II)V
    .locals 13

    move-object v0, p0

    .line 1
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttributePositionH:I

    iget-object v6, v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2
    iget v7, v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttributeTexCoorH:I

    iget-object v12, v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 3
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttributePositionH:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 4
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttributeTexCoorH:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 5
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mUniformMVPMatrixH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getFinalMatrix()[F

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 6
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mUniformSTMatrixH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getTexMatrix()[F

    move-result-object v2

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v1, 0x84c0

    .line 7
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    move v2, p1

    .line 8
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 9
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mUniformTextureH:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 10
    iget-object v1, v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttribute:Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;

    iget-object v1, v1, Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;->mKaleidoscopeId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->convertToKaleidoscopeEffectId(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mKaleidoscopeId:I

    .line 11
    iget v2, v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mUniformModeHandle:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 12
    iget v0, v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mUniformResolutionHandle:I

    move/from16 v1, p3

    int-to-float v1, v1

    move/from16 v2, p4

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    const-string p0, "KaleidoscopeRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->initShader()V

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->initAttributePointer()V

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p0, "KaleidoscopeRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    :cond_1
    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLState;->pushState()V

    .line 2
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLState;->identityAllM()V

    .line 3
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid shader program. shaderProgram:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KaleidoscopeRenderer"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 6
    :cond_0
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 9
    iget v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 10
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v5, v4}, Lcom/xiaomi/renderengine/gl/GLState;->ortho(FFFF)V

    .line 11
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v4, v5}, Lcom/xiaomi/renderengine/gl/GLState;->scale(FFF)V

    .line 12
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v0

    iget-object v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    iget v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->initShaderValue(ILcom/xiaomi/renderengine/gl/GLState;II)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 13
    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 14
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 15
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 16
    iget p0, p0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;->mAttributeTexCoorH:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 17
    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/GLState;->popState()V

    .line 18
    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method

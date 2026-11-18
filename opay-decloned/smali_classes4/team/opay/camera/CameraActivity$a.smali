.class public final Lteam/opay/camera/CameraActivity$a;
.super Ljava/lang/Object;
.source "CameraActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/camera/CameraActivity;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lteam/opay/camera/CameraActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 2
    .line 3
    sget v1, Lteam/opay/camera/R$id;->target_view_container:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 14
    .line 15
    sget v2, Lteam/opay/camera/R$id;->cover_img:I

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/ImageView;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    const-string v4, "target_view_container"

    .line 36
    .line 37
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    float-to-int v3, v3

    .line 45
    invoke-static {v0, v3}, Lteam/opay/camera/CameraActivity;->L(Lteam/opay/camera/CameraActivity;I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 55
    .line 56
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    float-to-int v1, v1

    .line 64
    invoke-static {v0, v1}, Lteam/opay/camera/CameraActivity;->M(Lteam/opay/camera/CameraActivity;I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/widget/ImageView;

    .line 74
    .line 75
    const-string v3, "cover_img"

    .line 76
    .line 77
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-static {v0, v1}, Lteam/opay/camera/CameraActivity;->I(Lteam/opay/camera/CameraActivity;I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Landroid/widget/ImageView;

    .line 94
    .line 95
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-static {v0, v1}, Lteam/opay/camera/CameraActivity;->H(Lteam/opay/camera/CameraActivity;I)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 106
    .line 107
    invoke-static {v0}, Lteam/opay/camera/CameraActivity;->A(Lteam/opay/camera/CameraActivity;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-lez v0, :cond_1

    .line 116
    .line 117
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 118
    .line 119
    invoke-static {v0}, Lteam/opay/camera/CameraActivity;->A(Lteam/opay/camera/CameraActivity;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    const-string v0, ":"

    .line 124
    .line 125
    filled-new-array {v0}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    const/4 v8, 0x6

    .line 130
    const/4 v9, 0x0

    .line 131
    const/4 v6, 0x0

    .line 132
    const/4 v7, 0x0

    .line 133
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v1, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 138
    .line 139
    const/4 v4, 0x1

    .line 140
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    check-cast v4, Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 147
    .line 148
    .line 149
    move-result-wide v4

    .line 150
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 157
    .line 158
    .line 159
    move-result-wide v6

    .line 160
    div-double/2addr v4, v6

    .line 161
    invoke-static {v1, v4, v5}, Lteam/opay/camera/CameraActivity;->K(Lteam/opay/camera/CameraActivity;D)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Landroid/widget/ImageView;

    .line 171
    .line 172
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    int-to-double v4, v1

    .line 180
    iget-object v1, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 181
    .line 182
    invoke-static {v1}, Lteam/opay/camera/CameraActivity;->z(Lteam/opay/camera/CameraActivity;)D

    .line 183
    .line 184
    .line 185
    move-result-wide v6

    .line 186
    mul-double v4, v4, v6

    .line 187
    .line 188
    double-to-int v1, v4

    .line 189
    invoke-static {v0, v1}, Lteam/opay/camera/CameraActivity;->O(Lteam/opay/camera/CameraActivity;I)V

    .line 190
    .line 191
    .line 192
    :cond_1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 193
    .line 194
    iget-object v1, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 195
    .line 196
    invoke-static {v1}, Lteam/opay/camera/CameraActivity;->D(Lteam/opay/camera/CameraActivity;)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/4 v4, -0x1

    .line 201
    invoke-direct {v0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 202
    .line 203
    .line 204
    iget-object v1, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Landroid/widget/ImageView;

    .line 211
    .line 212
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 219
    .line 220
    sget v1, Lteam/opay/camera/R$id;->mask_img:I

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Landroid/widget/ImageView;

    .line 227
    .line 228
    new-instance v1, Lteam/opay/camera/CameraActivity$a$a;

    .line 229
    .line 230
    invoke-direct {v1, p0}, Lteam/opay/camera/CameraActivity$a$a;-><init>(Lteam/opay/camera/CameraActivity$a;)V

    .line 231
    .line 232
    .line 233
    const-wide/16 v2, 0x64

    .line 234
    .line 235
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 239
    .line 240
    invoke-static {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->x(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    const-string v1, "ProcessCameraProvider.getInstance(this)"

    .line 245
    .line 246
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    new-instance v1, Lteam/opay/camera/CameraActivity$a$b;

    .line 250
    .line 251
    invoke-direct {v1, p0, v0}, Lteam/opay/camera/CameraActivity$a$b;-><init>(Lteam/opay/camera/CameraActivity$a;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 252
    .line 253
    .line 254
    iget-object v2, p0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 255
    .line 256
    invoke-static {v2}, Lzq2;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 261
    .line 262
    .line 263
    :cond_2
    :goto_0
    return-void
.end method

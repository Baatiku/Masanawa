.class public Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
.super Ljava/lang/Object;
.source "OFaceLiveConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/Motion;",
            ">;"
        }
    .end annotation
.end field

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:Z

.field public M:I

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lcom/opay/face/phoneface/model/Motion;",
            ">;"
        }
    .end annotation
.end field

.field public U:Z

.field public V:I

.field public W:I

.field public X:I

.field public Y:Lcom/opay/face/phoneface/model/PublicKey;

.field public Z:I

.field public a:Z

.field public a0:I

.field public b:I

.field public b0:J

.field public c:Z

.field public c0:Z

.field public d:I

.field public d0:I

.field public e:I

.field public e0:I

.field public f:Z

.field public f0:Z

.field public g:Z

.field public g0:I

.field public h:I

.field public h0:Z

.field public i:I

.field public i0:I

.field public j:I

.field public j0:I

.field public k:Z

.field public k0:I

.field public l:I

.field public l0:I

.field public m:I

.field public m0:I

.field public n:I

.field public n0:I

.field public o:I

.field public o0:Z

.field public p:I

.field public p0:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Z

.field public w:I

.field public x:I

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->a:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->b:I

    .line 8
    .line 9
    const/16 v1, 0x14

    .line 10
    .line 11
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d:I

    .line 12
    .line 13
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    iput-boolean v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->f:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->g:Z

    .line 19
    .line 20
    const/16 v3, 0x55

    .line 21
    .line 22
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h:I

    .line 23
    .line 24
    const/16 v3, 0x4b

    .line 25
    .line 26
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->i:I

    .line 27
    .line 28
    const/16 v3, 0xa0

    .line 29
    .line 30
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->j:I

    .line 31
    .line 32
    iput-boolean v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->k:Z

    .line 33
    .line 34
    const/16 v3, 0x1e

    .line 35
    .line 36
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l:I

    .line 37
    .line 38
    const/16 v4, 0x28

    .line 39
    .line 40
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->m:I

    .line 41
    .line 42
    const/16 v4, 0xf

    .line 43
    .line 44
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n:I

    .line 45
    .line 46
    const/16 v5, 0x19

    .line 47
    .line 48
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->o:I

    .line 49
    .line 50
    const/16 v5, 0xa

    .line 51
    .line 52
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->p:I

    .line 53
    .line 54
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->q:I

    .line 55
    .line 56
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->r:I

    .line 57
    .line 58
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->s:I

    .line 59
    .line 60
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->t:I

    .line 61
    .line 62
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->u:I

    .line 63
    .line 64
    iput-boolean v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->v:Z

    .line 65
    .line 66
    const/16 v6, 0x46

    .line 67
    .line 68
    iput v6, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->w:I

    .line 69
    .line 70
    const/4 v6, 0x7

    .line 71
    iput v6, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->x:I

    .line 72
    .line 73
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->y:I

    .line 74
    .line 75
    const-string v6, "1234"

    .line 76
    .line 77
    iput-object v6, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->z:Ljava/lang/String;

    .line 78
    .line 79
    const-string v6, "1*"

    .line 80
    .line 81
    iput-object v6, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->A:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v6, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v6, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->B:Ljava/util/List;

    .line 89
    .line 90
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->C:I

    .line 91
    .line 92
    const/4 v6, -0x1

    .line 93
    iput v6, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->D:I

    .line 94
    .line 95
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->E:I

    .line 96
    .line 97
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->F:I

    .line 98
    .line 99
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->G:I

    .line 100
    .line 101
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->H:I

    .line 102
    .line 103
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->I:I

    .line 104
    .line 105
    const/16 v4, 0x1f4

    .line 106
    .line 107
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->J:I

    .line 108
    .line 109
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->K:I

    .line 110
    .line 111
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->L:Z

    .line 112
    .line 113
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->M:I

    .line 114
    .line 115
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->N:I

    .line 116
    .line 117
    iput-boolean v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->O:Z

    .line 118
    .line 119
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->P:Z

    .line 120
    .line 121
    const/4 v2, 0x2

    .line 122
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Q:I

    .line 123
    .line 124
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->R:Z

    .line 125
    .line 126
    new-instance v2, Ljava/util/HashMap;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 129
    .line 130
    .line 131
    iput-object v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->T:Ljava/util/Map;

    .line 132
    .line 133
    const/16 v4, 0x96

    .line 134
    .line 135
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->V:I

    .line 136
    .line 137
    const/16 v4, 0x12c

    .line 138
    .line 139
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->W:I

    .line 140
    .line 141
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->X:I

    .line 142
    .line 143
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Z:I

    .line 144
    .line 145
    const/16 v4, 0x3e8

    .line 146
    .line 147
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->a0:I

    .line 148
    .line 149
    const/16 v4, 0x3e7

    .line 150
    .line 151
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d0:I

    .line 152
    .line 153
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e0:I

    .line 154
    .line 155
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->f0:Z

    .line 156
    .line 157
    const/16 v4, 0x5dc

    .line 158
    .line 159
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->g0:I

    .line 160
    .line 161
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h0:Z

    .line 162
    .line 163
    const/16 v4, 0xc3

    .line 164
    .line 165
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->i0:I

    .line 166
    .line 167
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->j0:I

    .line 168
    .line 169
    const/16 v1, 0x1194

    .line 170
    .line 171
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->k0:I

    .line 172
    .line 173
    const/16 v4, 0x30

    .line 174
    .line 175
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l0:I

    .line 176
    .line 177
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->m0:I

    .line 178
    .line 179
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n0:I

    .line 180
    .line 181
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->o0:Z

    .line 182
    .line 183
    const/16 v0, 0x50

    .line 184
    .line 185
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->p0:I

    .line 186
    .line 187
    sget-object v0, Lcom/opay/face/phoneface/model/Motion;->BLINK:Lcom/opay/face/phoneface/model/Motion;

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/opay/face/phoneface/model/Motion;->getValue()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-static {v1, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->T:Ljava/util/Map;

    .line 205
    .line 206
    sget-object v1, Lcom/opay/face/phoneface/model/Motion;->OPEN_MOUTH:Lcom/opay/face/phoneface/model/Motion;

    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/opay/face/phoneface/model/Motion;->getValue()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-static {v2, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->T:Ljava/util/Map;

    .line 224
    .line 225
    sget-object v1, Lcom/opay/face/phoneface/model/Motion;->SHAKE_HEAD:Lcom/opay/face/phoneface/model/Motion;

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/opay/face/phoneface/model/Motion;->getValue()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-static {v2, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->T:Ljava/util/Map;

    .line 243
    .line 244
    sget-object v1, Lcom/opay/face/phoneface/model/Motion;->NOD:Lcom/opay/face/phoneface/model/Motion;

    .line 245
    .line 246
    invoke-virtual {v1}, Lcom/opay/face/phoneface/model/Motion;->getValue()I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    invoke-static {v2, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 262
    .line 263
    .line 264
    move-result-wide v0

    .line 265
    iput-wide v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->b0:J

    .line 266
    .line 267
    return-void
.end method

.method public static synthetic A(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->N:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic B(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->O:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic C(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->P:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic D(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Q:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic E(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->U:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic F(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->R:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic G(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->S:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic H(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->V:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic I(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic J(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->W:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic K(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->X:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic L(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Lcom/opay/face/phoneface/model/PublicKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Y:Lcom/opay/face/phoneface/model/PublicKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic M(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Z:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic N(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->a0:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic O(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->c0:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic P(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d0:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic Q(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e0:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic R(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->f0:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic S(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->g0:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic T(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic U(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h0:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic V(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->i0:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic W(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->j0:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic X(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->k0:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic Y(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l0:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic Z(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->m0:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic a(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic a0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n0:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic b(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic b0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->o0:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->p0:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic e(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->m:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic e0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic f(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic f0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->i:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic g0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->j:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->s:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic j(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic k(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->w:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic l(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->y:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic m(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic n(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->B:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->C:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic p(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->D:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic q(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->E:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic r(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->F:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic s(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->G:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic t(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->H:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic u(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->I:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic v(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->J:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic w(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->K:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic x(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic y(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->L:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic z(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->M:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public A0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->c0:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public B0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->U:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public C0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->R:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public D0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->S:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public E0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->V:I

    .line 2
    .line 3
    return-object p0
.end method

.method public F0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public G0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->W:I

    .line 2
    .line 3
    return-object p0
.end method

.method public H0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->f0:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public I0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->y:I

    .line 2
    .line 3
    return-object p0
.end method

.method public J0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->O:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public K0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->M:I

    .line 2
    .line 3
    return-object p0
.end method

.method public L0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->L:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public M0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h:I

    .line 2
    .line 3
    return-object p0
.end method

.method public N0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->K:I

    .line 2
    .line 3
    return-object p0
.end method

.method public O0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Q:I

    .line 2
    .line 3
    return-object p0
.end method

.method public P0(Ljava/lang/String;)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public Q0(Ljava/lang/String;)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public R0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->J:I

    .line 2
    .line 3
    return-object p0
.end method

.method public S0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public T0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->s:I

    .line 2
    .line 3
    return-object p0
.end method

.method public U0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->m:I

    .line 2
    .line 3
    return-object p0
.end method

.method public V0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->o0:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public W0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->o:I

    .line 2
    .line 3
    return-object p0
.end method

.method public X0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->i0:I

    .line 2
    .line 3
    return-object p0
.end method

.method public Y0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->k0:I

    .line 2
    .line 3
    return-object p0
.end method

.method public Z0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->j0:I

    .line 2
    .line 3
    return-object p0
.end method

.method public a1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->C:I

    .line 2
    .line 3
    return-object p0
.end method

.method public b1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->p0:I

    .line 2
    .line 3
    return-object p0
.end method

.method public c1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e:I

    .line 2
    .line 3
    return-object p0
.end method

.method public d1(Lcom/opay/face/phoneface/model/PublicKey;)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Y:Lcom/opay/face/phoneface/model/PublicKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public e1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->j:I

    .line 2
    .line 3
    return-object p0
.end method

.method public f1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public g1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->D:I

    .line 2
    .line 3
    return-object p0
.end method

.method public h0()Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->B:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->b:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    if-le v0, v2, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->access$5900()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "cameraId:"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->b:I

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v0, v3}, Lcom/opay/face/util/Logs;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->b:I

    .line 41
    .line 42
    :cond_1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e:I

    .line 43
    .line 44
    const/4 v3, 0x5

    .line 45
    if-ge v0, v3, :cond_2

    .line 46
    .line 47
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e:I

    .line 48
    .line 49
    :cond_2
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e:I

    .line 50
    .line 51
    const/16 v4, 0x64

    .line 52
    .line 53
    if-le v0, v4, :cond_3

    .line 54
    .line 55
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e:I

    .line 56
    .line 57
    :cond_3
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d:I

    .line 58
    .line 59
    if-ge v0, v3, :cond_4

    .line 60
    .line 61
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d:I

    .line 62
    .line 63
    :cond_4
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d:I

    .line 64
    .line 65
    if-le v0, v4, :cond_5

    .line 66
    .line 67
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d:I

    .line 68
    .line 69
    :cond_5
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h:I

    .line 70
    .line 71
    if-gtz v0, :cond_6

    .line 72
    .line 73
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h:I

    .line 74
    .line 75
    :cond_6
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h:I

    .line 76
    .line 77
    if-le v0, v4, :cond_7

    .line 78
    .line 79
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h:I

    .line 80
    .line 81
    :cond_7
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->i:I

    .line 82
    .line 83
    const/16 v5, 0x3c

    .line 84
    .line 85
    if-ge v0, v5, :cond_8

    .line 86
    .line 87
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->i:I

    .line 88
    .line 89
    :cond_8
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->i:I

    .line 90
    .line 91
    const/16 v5, 0x96

    .line 92
    .line 93
    if-le v0, v5, :cond_9

    .line 94
    .line 95
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->i:I

    .line 96
    .line 97
    :cond_9
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->j:I

    .line 98
    .line 99
    const/16 v5, 0x6e

    .line 100
    .line 101
    if-ge v0, v5, :cond_a

    .line 102
    .line 103
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->j:I

    .line 104
    .line 105
    :cond_a
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->j:I

    .line 106
    .line 107
    const/16 v5, 0xc8

    .line 108
    .line 109
    if-le v0, v5, :cond_b

    .line 110
    .line 111
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->j:I

    .line 112
    .line 113
    :cond_b
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l:I

    .line 114
    .line 115
    if-gez v0, :cond_c

    .line 116
    .line 117
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l:I

    .line 118
    .line 119
    :cond_c
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l:I

    .line 120
    .line 121
    if-le v0, v4, :cond_d

    .line 122
    .line 123
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l:I

    .line 124
    .line 125
    :cond_d
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n:I

    .line 126
    .line 127
    if-gez v0, :cond_e

    .line 128
    .line 129
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n:I

    .line 130
    .line 131
    :cond_e
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n:I

    .line 132
    .line 133
    if-le v0, v4, :cond_f

    .line 134
    .line 135
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n:I

    .line 136
    .line 137
    :cond_f
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->o:I

    .line 138
    .line 139
    if-ge v0, v3, :cond_10

    .line 140
    .line 141
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->o:I

    .line 142
    .line 143
    :cond_10
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->o:I

    .line 144
    .line 145
    const/16 v5, 0x1e

    .line 146
    .line 147
    if-le v0, v5, :cond_11

    .line 148
    .line 149
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->o:I

    .line 150
    .line 151
    :cond_11
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->p:I

    .line 152
    .line 153
    if-gez v0, :cond_12

    .line 154
    .line 155
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->p:I

    .line 156
    .line 157
    :cond_12
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->p:I

    .line 158
    .line 159
    if-le v0, v5, :cond_13

    .line 160
    .line 161
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->p:I

    .line 162
    .line 163
    :cond_13
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->s:I

    .line 164
    .line 165
    if-gez v0, :cond_14

    .line 166
    .line 167
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->s:I

    .line 168
    .line 169
    :cond_14
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->s:I

    .line 170
    .line 171
    if-le v0, v5, :cond_15

    .line 172
    .line 173
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->s:I

    .line 174
    .line 175
    :cond_15
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->w:I

    .line 176
    .line 177
    if-gez v0, :cond_16

    .line 178
    .line 179
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->w:I

    .line 180
    .line 181
    :cond_16
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->w:I

    .line 182
    .line 183
    const/16 v5, 0x2710

    .line 184
    .line 185
    if-le v0, v5, :cond_17

    .line 186
    .line 187
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->w:I

    .line 188
    .line 189
    :cond_17
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->y:I

    .line 190
    .line 191
    if-eqz v0, :cond_18

    .line 192
    .line 193
    if-eq v0, v2, :cond_18

    .line 194
    .line 195
    const/4 v6, 0x2

    .line 196
    if-eq v0, v6, :cond_18

    .line 197
    .line 198
    const/4 v6, 0x3

    .line 199
    if-eq v0, v6, :cond_18

    .line 200
    .line 201
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->y:I

    .line 202
    .line 203
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .line 207
    .line 208
    iget-object v6, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->z:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v7, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->A:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {p0, v6, v7, v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->i0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-nez v6, :cond_19

    .line 217
    .line 218
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->B:Ljava/util/List;

    .line 219
    .line 220
    sget-object v6, Lcom/opay/face/phoneface/model/Motion;->OPEN_MOUTH:Lcom/opay/face/phoneface/model/Motion;

    .line 221
    .line 222
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    goto/16 :goto_3

    .line 226
    .line 227
    :cond_19
    invoke-static {}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->access$5900()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v8, "motionList pre:"

    .line 237
    .line 238
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-static {v6, v7}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v6, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->A:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    new-instance v7, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .line 261
    .line 262
    array-length v8, v6

    .line 263
    new-array v8, v8, [Lcom/opay/face/phoneface/model/Motion;

    .line 264
    .line 265
    const/4 v9, 0x0

    .line 266
    :goto_0
    array-length v10, v6

    .line 267
    if-ge v9, v10, :cond_1b

    .line 268
    .line 269
    iget-object v10, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->T:Ljava/util/Map;

    .line 270
    .line 271
    aget-char v11, v6, v9

    .line 272
    .line 273
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    check-cast v10, Lcom/opay/face/phoneface/model/Motion;

    .line 282
    .line 283
    if-eqz v10, :cond_1a

    .line 284
    .line 285
    aput-object v10, v8, v9

    .line 286
    .line 287
    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_1a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v10

    .line 295
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 299
    .line 300
    goto :goto_0

    .line 301
    :cond_1b
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 302
    .line 303
    .line 304
    invoke-static {}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->access$5900()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    new-instance v9, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string v10, "motionList end:"

    .line 314
    .line 315
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    invoke-static {v6, v9}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    if-eqz v7, :cond_1c

    .line 337
    .line 338
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    check-cast v7, Ljava/lang/Integer;

    .line 343
    .line 344
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v9

    .line 352
    check-cast v9, Lcom/opay/face/phoneface/model/Motion;

    .line 353
    .line 354
    aput-object v9, v8, v7

    .line 355
    .line 356
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    goto :goto_2

    .line 360
    :cond_1c
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->B:Ljava/util/List;

    .line 361
    .line 362
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 367
    .line 368
    .line 369
    :goto_3
    invoke-static {}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->access$5900()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    const-string v7, "motionList success:"

    .line 379
    .line 380
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    iget-object v7, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->B:Ljava/util/List;

    .line 384
    .line 385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    invoke-static {v0, v6}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->C:I

    .line 396
    .line 397
    const/16 v6, -0x14

    .line 398
    .line 399
    if-ge v0, v6, :cond_1d

    .line 400
    .line 401
    iput v6, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->C:I

    .line 402
    .line 403
    :cond_1d
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->C:I

    .line 404
    .line 405
    const/16 v6, 0x14

    .line 406
    .line 407
    if-le v0, v6, :cond_1e

    .line 408
    .line 409
    iput v6, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->C:I

    .line 410
    .line 411
    :cond_1e
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->D:I

    .line 412
    .line 413
    const/4 v6, -0x1

    .line 414
    if-ge v0, v6, :cond_1f

    .line 415
    .line 416
    iput v6, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->D:I

    .line 417
    .line 418
    :cond_1f
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->D:I

    .line 419
    .line 420
    if-le v0, v4, :cond_20

    .line 421
    .line 422
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->D:I

    .line 423
    .line 424
    :cond_20
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->E:I

    .line 425
    .line 426
    if-gez v0, :cond_21

    .line 427
    .line 428
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->E:I

    .line 429
    .line 430
    :cond_21
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->E:I

    .line 431
    .line 432
    if-le v0, v4, :cond_22

    .line 433
    .line 434
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->E:I

    .line 435
    .line 436
    :cond_22
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->F:I

    .line 437
    .line 438
    if-gez v0, :cond_23

    .line 439
    .line 440
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->F:I

    .line 441
    .line 442
    :cond_23
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->F:I

    .line 443
    .line 444
    if-le v0, v4, :cond_24

    .line 445
    .line 446
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->F:I

    .line 447
    .line 448
    :cond_24
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->G:I

    .line 449
    .line 450
    if-gez v0, :cond_25

    .line 451
    .line 452
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->G:I

    .line 453
    .line 454
    :cond_25
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->G:I

    .line 455
    .line 456
    if-le v0, v4, :cond_26

    .line 457
    .line 458
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->G:I

    .line 459
    .line 460
    :cond_26
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->H:I

    .line 461
    .line 462
    if-gez v0, :cond_27

    .line 463
    .line 464
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->H:I

    .line 465
    .line 466
    :cond_27
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->H:I

    .line 467
    .line 468
    if-le v0, v4, :cond_28

    .line 469
    .line 470
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->H:I

    .line 471
    .line 472
    :cond_28
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->I:I

    .line 473
    .line 474
    if-gez v0, :cond_29

    .line 475
    .line 476
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->I:I

    .line 477
    .line 478
    :cond_29
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->I:I

    .line 479
    .line 480
    if-le v0, v4, :cond_2a

    .line 481
    .line 482
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->I:I

    .line 483
    .line 484
    :cond_2a
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->J:I

    .line 485
    .line 486
    if-gez v0, :cond_2b

    .line 487
    .line 488
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->J:I

    .line 489
    .line 490
    :cond_2b
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->J:I

    .line 491
    .line 492
    const/16 v2, 0x9c4

    .line 493
    .line 494
    if-le v0, v2, :cond_2c

    .line 495
    .line 496
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->J:I

    .line 497
    .line 498
    :cond_2c
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->K:I

    .line 499
    .line 500
    if-gez v0, :cond_2d

    .line 501
    .line 502
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->K:I

    .line 503
    .line 504
    :cond_2d
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->K:I

    .line 505
    .line 506
    if-le v0, v2, :cond_2e

    .line 507
    .line 508
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->K:I

    .line 509
    .line 510
    :cond_2e
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->M:I

    .line 511
    .line 512
    const/16 v2, 0x32

    .line 513
    .line 514
    if-ge v0, v2, :cond_2f

    .line 515
    .line 516
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->M:I

    .line 517
    .line 518
    :cond_2f
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->M:I

    .line 519
    .line 520
    const/16 v2, 0xbb8

    .line 521
    .line 522
    if-le v0, v2, :cond_30

    .line 523
    .line 524
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->M:I

    .line 525
    .line 526
    :cond_30
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->N:I

    .line 527
    .line 528
    if-gez v0, :cond_31

    .line 529
    .line 530
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->N:I

    .line 531
    .line 532
    :cond_31
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->N:I

    .line 533
    .line 534
    if-le v0, v4, :cond_32

    .line 535
    .line 536
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->N:I

    .line 537
    .line 538
    :cond_32
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Q:I

    .line 539
    .line 540
    if-gez v0, :cond_33

    .line 541
    .line 542
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Q:I

    .line 543
    .line 544
    :cond_33
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Q:I

    .line 545
    .line 546
    if-le v0, v3, :cond_34

    .line 547
    .line 548
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Q:I

    .line 549
    .line 550
    :cond_34
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->X:I

    .line 551
    .line 552
    if-gez v0, :cond_35

    .line 553
    .line 554
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->X:I

    .line 555
    .line 556
    :cond_35
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->X:I

    .line 557
    .line 558
    if-le v0, v4, :cond_36

    .line 559
    .line 560
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->X:I

    .line 561
    .line 562
    :cond_36
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->U:Z

    .line 563
    .line 564
    if-eqz v0, :cond_37

    .line 565
    .line 566
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->B:Ljava/util/List;

    .line 567
    .line 568
    sget-object v2, Lcom/opay/face/phoneface/model/Motion;->FRONT_NEAR:Lcom/opay/face/phoneface/model/Motion;

    .line 569
    .line 570
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    :cond_37
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->S:Z

    .line 574
    .line 575
    if-eqz v0, :cond_38

    .line 576
    .line 577
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->B:Ljava/util/List;

    .line 578
    .line 579
    sget-object v2, Lcom/opay/face/phoneface/model/Motion;->FLASH:Lcom/opay/face/phoneface/model/Motion;

    .line 580
    .line 581
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    :cond_38
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e0:I

    .line 585
    .line 586
    if-gez v0, :cond_39

    .line 587
    .line 588
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e0:I

    .line 589
    .line 590
    :cond_39
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e0:I

    .line 591
    .line 592
    if-le v0, v4, :cond_3a

    .line 593
    .line 594
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e0:I

    .line 595
    .line 596
    :cond_3a
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->g0:I

    .line 597
    .line 598
    if-gez v0, :cond_3b

    .line 599
    .line 600
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->g0:I

    .line 601
    .line 602
    :cond_3b
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->g0:I

    .line 603
    .line 604
    if-le v0, v5, :cond_3c

    .line 605
    .line 606
    iput v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->g0:I

    .line 607
    .line 608
    :cond_3c
    new-instance v0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 609
    .line 610
    invoke-direct {v0, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;-><init>(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V

    .line 611
    .line 612
    .line 613
    return-object v0
.end method

.method public h1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->g0:I

    .line 2
    .line 3
    return-object p0
.end method

.method public i0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/Motion;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->k0(Ljava/lang/String;Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, p2}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->j0(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-le v0, v2, :cond_2

    .line 25
    .line 26
    invoke-static {}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->access$5900()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "order.len > sequence.len!"

    .line 31
    .line 32
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    array-length v0, p2

    .line 41
    const/4 v2, 0x0

    .line 42
    :goto_0
    if-ge v2, v0, :cond_4

    .line 43
    .line 44
    aget-char v3, p2, v2

    .line 45
    .line 46
    const/16 v4, 0x2a

    .line 47
    .line 48
    if-eq v4, v3, :cond_3

    .line 49
    .line 50
    iget-object v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->T:Ljava/util/Map;

    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    invoke-static {}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->access$5900()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    new-instance p3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v0, "order \'"

    .line 76
    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, "\' not contains sequence \'"

    .line 84
    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, "\'"

    .line 92
    .line 93
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p2, p1}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return v1

    .line 104
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    const/4 p1, 0x1

    .line 108
    return p1
.end method

.method public i1(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->g:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public j0(Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->access$5900()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "motionOrder is empty!"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v2, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    array-length v3, v0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    if-ge v4, v3, :cond_3

    .line 31
    .line 32
    aget-char v6, v0, v4

    .line 33
    .line 34
    const/16 v7, 0x2a

    .line 35
    .line 36
    if-eq v7, v6, :cond_1

    .line 37
    .line 38
    iget-object v8, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->T:Ljava/util/Map;

    .line 39
    .line 40
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-nez v8, :cond_1

    .line 49
    .line 50
    invoke-static {}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->access$5900()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "motion order check error \'"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, "\'"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v1

    .line 80
    :cond_1
    if-ne v7, v6, :cond_2

    .line 81
    .line 82
    add-int/lit8 v5, v5, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    add-int/2addr v5, v2

    .line 100
    array-length v0, v0

    .line 101
    if-eq v5, v0, :cond_4

    .line 102
    .line 103
    invoke-static {}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->access$5900()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v3, "order repeat \'"

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p1, "\' !"

    .line 121
    .line 122
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v0, p1}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return v1

    .line 133
    :cond_4
    const/4 p1, 0x1

    .line 134
    return p1
.end method

.method public j1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->a0:I

    .line 2
    .line 3
    return-object p0
.end method

.method public k0(Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/Motion;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->access$5900()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "motionSequence is empty!"

    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    array-length v2, v0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_3

    .line 25
    .line 26
    aget-char v4, v0, v3

    .line 27
    .line 28
    iget-object v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->T:Ljava/util/Map;

    .line 29
    .line 30
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    invoke-static {}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->access$5900()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v0, "motion sequence check error \'"

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "\'"

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v1

    .line 70
    :cond_1
    iget-object v5, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->T:Ljava/util/Map;

    .line 71
    .line 72
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Lcom/opay/face/phoneface/model/Motion;

    .line 81
    .line 82
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_2

    .line 87
    .line 88
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    array-length v0, v0

    .line 95
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eq v0, p2, :cond_4

    .line 100
    .line 101
    invoke-static {}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->access$5900()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v2, "sequence repeat \'"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, "\'!"

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p2, p1}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return v1

    .line 131
    :cond_4
    const/4 p1, 0x1

    .line 132
    return p1
.end method

.method public k1(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->v:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public l0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->b0:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public l1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->p:I

    .line 2
    .line 3
    return-object p0
.end method

.method public m0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->R:Z

    .line 2
    .line 3
    return v0
.end method

.method public m1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->w:I

    .line 2
    .line 3
    return-object p0
.end method

.method public n0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->E:I

    .line 2
    .line 3
    return-object p0
.end method

.method public n1(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->c:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public o0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->F:I

    .line 2
    .line 3
    return-object p0
.end method

.method public o1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Z:I

    .line 2
    .line 3
    return-object p0
.end method

.method public p0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->H:I

    .line 2
    .line 3
    return-object p0
.end method

.method public p1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d0:I

    .line 2
    .line 3
    return-object p0
.end method

.method public q0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->I:I

    .line 2
    .line 3
    return-object p0
.end method

.method public q1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l0:I

    .line 2
    .line 3
    return-object p0
.end method

.method public r0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->G:I

    .line 2
    .line 3
    return-object p0
.end method

.method public r1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n0:I

    .line 2
    .line 3
    return-object p0
.end method

.method public s0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->k:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public s1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->m0:I

    .line 2
    .line 3
    return-object p0
.end method

.method public t0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l:I

    .line 2
    .line 3
    return-object p0
.end method

.method public t1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e0:I

    .line 2
    .line 3
    return-object p0
.end method

.method public u0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->N:I

    .line 2
    .line 3
    return-object p0
.end method

.method public u1(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h0:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public v0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public w0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->P:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public x0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->X:I

    .line 2
    .line 3
    return-object p0
.end method

.method public y0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n:I

    .line 2
    .line 3
    return-object p0
.end method

.method public z0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->a:Z

    .line 2
    .line 3
    return-object p0
.end method

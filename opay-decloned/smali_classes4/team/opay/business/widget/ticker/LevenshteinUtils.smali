.class public Lteam/opay/business/widget/ticker/LevenshteinUtils;
.super Ljava/lang/Object;
.source "LevenshteinUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/util/List;[C[CIIII)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[C[CIIII)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sub-int v1, p4, p3

    .line 4
    .line 5
    sub-int v2, p6, p5

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    invoke-static {v0, v3, v4}, Lteam/opay/business/widget/ticker/LevenshteinUtils;->c(Ljava/util/List;II)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    add-int/lit8 v5, v1, 0x1

    .line 19
    .line 20
    add-int/lit8 v6, v2, 0x1

    .line 21
    .line 22
    const/4 v7, 0x2

    .line 23
    new-array v8, v7, [I

    .line 24
    .line 25
    const/4 v9, 0x1

    .line 26
    aput v6, v8, v9

    .line 27
    .line 28
    aput v5, v8, v4

    .line 29
    .line 30
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    check-cast v8, [[I

    .line 37
    .line 38
    const/4 v10, 0x0

    .line 39
    :goto_0
    if-ge v10, v5, :cond_1

    .line 40
    .line 41
    aget-object v11, v8, v10

    .line 42
    .line 43
    aput v10, v11, v4

    .line 44
    .line 45
    add-int/lit8 v10, v10, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v10, 0x0

    .line 49
    :goto_1
    if-ge v10, v6, :cond_2

    .line 50
    .line 51
    aget-object v11, v8, v4

    .line 52
    .line 53
    aput v10, v11, v10

    .line 54
    .line 55
    add-int/lit8 v10, v10, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v10, 0x1

    .line 59
    :goto_2
    if-ge v10, v5, :cond_5

    .line 60
    .line 61
    const/4 v11, 0x1

    .line 62
    :goto_3
    if-ge v11, v6, :cond_4

    .line 63
    .line 64
    add-int/lit8 v12, v10, -0x1

    .line 65
    .line 66
    add-int v13, v12, p3

    .line 67
    .line 68
    aget-char v13, p1, v13

    .line 69
    .line 70
    add-int/lit8 v14, v11, -0x1

    .line 71
    .line 72
    add-int v15, v14, p5

    .line 73
    .line 74
    aget-char v15, p2, v15

    .line 75
    .line 76
    if-ne v13, v15, :cond_3

    .line 77
    .line 78
    const/4 v13, 0x0

    .line 79
    goto :goto_4

    .line 80
    :cond_3
    const/4 v13, 0x1

    .line 81
    :goto_4
    aget-object v15, v8, v10

    .line 82
    .line 83
    aget-object v12, v8, v12

    .line 84
    .line 85
    aget v16, v12, v11

    .line 86
    .line 87
    add-int/lit8 v4, v16, 0x1

    .line 88
    .line 89
    aget v16, v15, v14

    .line 90
    .line 91
    add-int/lit8 v7, v16, 0x1

    .line 92
    .line 93
    aget v12, v12, v14

    .line 94
    .line 95
    add-int/2addr v12, v13

    .line 96
    invoke-static {v4, v7, v12}, Lteam/opay/business/widget/ticker/LevenshteinUtils;->e(III)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    aput v4, v15, v11

    .line 101
    .line 102
    add-int/lit8 v11, v11, 0x1

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    const/4 v7, 0x2

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    const/4 v7, 0x2

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    .line 113
    .line 114
    const/4 v5, 0x2

    .line 115
    mul-int/lit8 v3, v3, 0x2

    .line 116
    .line 117
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .line 119
    .line 120
    :goto_5
    if-gtz v1, :cond_8

    .line 121
    .line 122
    if-lez v2, :cond_6

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    sub-int/2addr v1, v9

    .line 130
    :goto_6
    if-ltz v1, :cond_7

    .line 131
    .line 132
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    add-int/lit8 v1, v1, -0x1

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_7
    return-void

    .line 145
    :cond_8
    :goto_7
    if-nez v1, :cond_9

    .line 146
    .line 147
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :goto_8
    add-int/lit8 v2, v2, -0x1

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_9
    if-nez v2, :cond_a

    .line 158
    .line 159
    const/4 v3, 0x2

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    add-int/lit8 v1, v1, -0x1

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_a
    aget-object v3, v8, v1

    .line 171
    .line 172
    add-int/lit8 v5, v2, -0x1

    .line 173
    .line 174
    aget v3, v3, v5

    .line 175
    .line 176
    add-int/lit8 v6, v1, -0x1

    .line 177
    .line 178
    aget-object v6, v8, v6

    .line 179
    .line 180
    aget v7, v6, v2

    .line 181
    .line 182
    aget v5, v6, v5

    .line 183
    .line 184
    if-ge v3, v7, :cond_b

    .line 185
    .line 186
    if-ge v3, v5, :cond_b

    .line 187
    .line 188
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    add-int/lit8 v2, v2, -0x1

    .line 196
    .line 197
    const/4 v3, 0x2

    .line 198
    :goto_9
    const/4 v5, 0x0

    .line 199
    goto :goto_5

    .line 200
    :cond_b
    if-ge v7, v5, :cond_c

    .line 201
    .line 202
    const/4 v3, 0x2

    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    add-int/lit8 v1, v1, -0x1

    .line 211
    .line 212
    goto :goto_9

    .line 213
    :cond_c
    const/4 v3, 0x2

    .line 214
    const/4 v5, 0x0

    .line 215
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    add-int/lit8 v1, v1, -0x1

    .line 223
    .line 224
    goto :goto_8
.end method

.method public static b([C[CLjava/util/Set;)[I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C[C",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;)[I"
        }
    .end annotation

    .line 1
    new-instance v7, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v8, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    :goto_0
    array-length v0, p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v3, v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_1
    array-length v2, p1

    .line 17
    if-ne v5, v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    :goto_2
    if-eqz v0, :cond_2

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_2
    if-eqz v0, :cond_3

    .line 28
    .line 29
    array-length p0, p1

    .line 30
    sub-int/2addr p0, v5

    .line 31
    invoke-static {v7, p0, v1}, Lteam/opay/business/widget/ticker/LevenshteinUtils;->c(Ljava/util/List;II)V

    .line 32
    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    const/4 v0, 0x2

    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    array-length p0, p0

    .line 39
    sub-int/2addr p0, v3

    .line 40
    invoke-static {v7, p0, v0}, Lteam/opay/business/widget/ticker/LevenshteinUtils;->c(Ljava/util/List;II)V

    .line 41
    .line 42
    .line 43
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    new-array p0, p0, [I

    .line 48
    .line 49
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-ge v8, p1, :cond_4

    .line 54
    .line 55
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    aput p1, p0, v8

    .line 66
    .line 67
    add-int/lit8 v8, v8, 0x1

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    return-object p0

    .line 71
    :cond_5
    aget-char v2, p0, v3

    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    aget-char v4, p1, v5

    .line 82
    .line 83
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v2, :cond_6

    .line 92
    .line 93
    if-eqz v4, :cond_6

    .line 94
    .line 95
    add-int/lit8 v0, v3, 0x1

    .line 96
    .line 97
    invoke-static {p0, v0, p2}, Lteam/opay/business/widget/ticker/LevenshteinUtils;->d([CILjava/util/Set;)I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    add-int/lit8 v0, v5, 0x1

    .line 102
    .line 103
    invoke-static {p1, v0, p2}, Lteam/opay/business/widget/ticker/LevenshteinUtils;->d([CILjava/util/Set;)I

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    move-object v0, v7

    .line 108
    move-object v1, p0

    .line 109
    move-object v2, p1

    .line 110
    move v4, v9

    .line 111
    move v6, v10

    .line 112
    invoke-static/range {v0 .. v6}, Lteam/opay/business/widget/ticker/LevenshteinUtils;->a(Ljava/util/List;[C[CIIII)V

    .line 113
    .line 114
    .line 115
    move v3, v9

    .line 116
    move v5, v10

    .line 117
    goto :goto_0

    .line 118
    :cond_6
    if-eqz v2, :cond_7

    .line 119
    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    if-eqz v4, :cond_8

    .line 131
    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    add-int/lit8 v3, v3, 0x1

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    add-int/lit8 v3, v3, 0x1

    .line 151
    .line 152
    goto :goto_5
.end method

.method public static c(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p1, :cond_0

    .line 3
    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public static d([CILjava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CI",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;)I"
        }
    .end annotation

    .line 1
    :goto_0
    array-length v0, p0

    .line 2
    if-ge p1, v0, :cond_1

    .line 3
    .line 4
    aget-char v0, p0, p1

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return p1

    .line 17
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    array-length p0, p0

    .line 21
    return p0
.end method

.method public static e(III)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.class public abstract Lcom/opay/face/common/view/dialog/BaseDialog;
.super Landroid/widget/LinearLayout;
.source "BaseDialog.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Lcom/opay/face/common/view/RoundImageView;

.field public e:Lcom/opay/face/common/view/RoundImageView;

.field public f:I

.field public g:I

.field public h:Lr3a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/dialog/BaseDialog;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/dialog/BaseDialog;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/dialog/BaseDialog;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Lcom/opay/face/common/util/ColorUtils;->a()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 8
    .line 9
    invoke-static {}, Lcom/opay/face/common/util/ColorUtils;->b()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->g:I

    .line 14
    .line 15
    return-void
.end method

.method public b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 6
    .line 7
    invoke-direct {v0, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    add-int/2addr p4, p2

    .line 15
    const/16 v1, 0x21

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2, p4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 18
    .line 19
    .line 20
    new-instance p4, Landroid/text/style/StyleSpan;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-direct {p4, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    add-int/2addr p3, p2

    .line 31
    invoke-virtual {p1, p4, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setMessage(Landroid/text/SpannableString;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMotionState(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_5

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x3ed

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x3f4

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    packed-switch p1, :pswitch_data_1

    .line 25
    .line 26
    .line 27
    new-instance p1, Landroid/text/SpannableString;

    .line 28
    .line 29
    const-string v0, "Kindly move your face into the frame."

    .line 30
    .line 31
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :pswitch_0
    new-instance p1, Landroid/text/SpannableString;

    .line 37
    .line 38
    const-string v0, "The environment is too dark. Please move to a brighter area. "

    .line 39
    .line 40
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "too dark"

    .line 44
    .line 45
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->g:I

    .line 46
    .line 47
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string v1, "brighter"

    .line 51
    .line 52
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 53
    .line 54
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :pswitch_1
    new-instance p1, Landroid/text/SpannableString;

    .line 60
    .line 61
    const-string v0, "There\'s too much light in your surroundings. Try adjusting your camera angle or reducing the light."

    .line 62
    .line 63
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "too much light"

    .line 67
    .line 68
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->g:I

    .line 69
    .line 70
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    const-string v1, "reducing the light"

    .line 74
    .line 75
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 76
    .line 77
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_2
    new-instance p1, Landroid/text/SpannableString;

    .line 83
    .line 84
    const-string v0, "Blur detected. Please stay still or switch devices."

    .line 85
    .line 86
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :pswitch_3
    new-instance p1, Landroid/text/SpannableString;

    .line 92
    .line 93
    const-string v0, "Your face was not placed in the frame. Kindly move your face into the frame."

    .line 94
    .line 95
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    const-string v1, "into the frame"

    .line 99
    .line 100
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 101
    .line 102
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :pswitch_4
    new-instance p1, Landroid/text/SpannableString;

    .line 108
    .line 109
    const-string v0, "Your face is too close to the camera. Kindly move back a bit."

    .line 110
    .line 111
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    const-string v1, "too close"

    .line 115
    .line 116
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->g:I

    .line 117
    .line 118
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    const-string v1, "move back"

    .line 122
    .line 123
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 124
    .line 125
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :pswitch_5
    new-instance p1, Landroid/text/SpannableString;

    .line 130
    .line 131
    const-string v0, "Your face is too far from the camera. Kindly move your face closer."

    .line 132
    .line 133
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    const-string v1, "too far"

    .line 137
    .line 138
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->g:I

    .line 139
    .line 140
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    const-string v1, "move"

    .line 144
    .line 145
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 146
    .line 147
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    const-string v1, "closer"

    .line 151
    .line 152
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 153
    .line 154
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_0
    new-instance p1, Landroid/text/SpannableString;

    .line 159
    .line 160
    const-string v0, "More than one face detected. Make sure there are no other faces in the background"

    .line 161
    .line 162
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_1
    new-instance p1, Landroid/text/SpannableString;

    .line 167
    .line 168
    const-string v0, "Kindly face the camera directly"

    .line 169
    .line 170
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_2
    new-instance p1, Landroid/text/SpannableString;

    .line 175
    .line 176
    const-string v0, "You\'re doing great! Just one more step to go. Kindly nod your head according to the instructions on the page."

    .line 177
    .line 178
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    const-string v1, "nod your head"

    .line 182
    .line 183
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 184
    .line 185
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_3
    new-instance p1, Landroid/text/SpannableString;

    .line 190
    .line 191
    const-string v0, "You\'re doing great! Just one more step to go. Kindly turn your head according to the instructions on the page."

    .line 192
    .line 193
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    const-string v1, "turn your head"

    .line 197
    .line 198
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 199
    .line 200
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_4
    new-instance p1, Landroid/text/SpannableString;

    .line 205
    .line 206
    const-string v0, "You\'re doing great! Just one more step to go. Kindly open your mouth according to the instructions on the page."

    .line 207
    .line 208
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    const-string v1, "open your mouth"

    .line 212
    .line 213
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 214
    .line 215
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_5
    new-instance p1, Landroid/text/SpannableString;

    .line 220
    .line 221
    const-string v0, "You\'re doing great! Just one more step to go. Kindly blink your eyes according to the instructions on the page."

    .line 222
    .line 223
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    const-string v1, "blink your eyes"

    .line 227
    .line 228
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 229
    .line 230
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    :goto_0
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/dialog/BaseDialog;->setMessage(Landroid/text/SpannableString;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :pswitch_data_1
    .packed-switch 0x3f0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOFaceDialogClickListener(Lr3a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->h:Lr3a;

    .line 2
    .line 3
    return-void
.end method

.method public setSampleImage(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->e:Lcom/opay/face/common/view/RoundImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setSampleImage(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->e:Lcom/opay/face/common/view/RoundImageView;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->e:Lcom/opay/face/common/view/RoundImageView;

    invoke-virtual {v0, p1}, Lcom/opay/face/common/view/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setSelfieImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->d:Lcom/opay/face/common/view/RoundImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->d:Lcom/opay/face/common/view/RoundImageView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/opay/face/common/view/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

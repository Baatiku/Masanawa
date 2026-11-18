.class public abstract Lteam/opay/pay/spi/ServiceRegistry;
.super Ljava/lang/Object;
.source "ServiceRegistry.java"


# static fields
.field private static final sInstantiators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final sServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/spi/ServiceRegistry;->sServices:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lteam/opay/pay/spi/ServiceRegistry;->sInstantiators:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$1;

    .line 16
    .line 17
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$1;-><init>()V

    .line 18
    .line 19
    .line 20
    const-class v1, Lcashier/AbstractQuickPayDelegate;

    .line 21
    .line 22
    const-class v2, Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;

    .line 23
    .line 24
    const-string v3, ""

    .line 25
    .line 26
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$2;

    .line 30
    .line 31
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$2;-><init>()V

    .line 32
    .line 33
    .line 34
    const-class v1, Lcom/loan/cash/credit/auth/IAuthStateProvider;

    .line 35
    .line 36
    const-class v2, Lcom/loan/cash/credit/bnpl/BNPLAuthStateProvider;

    .line 37
    .line 38
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$3;

    .line 42
    .line 43
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$3;-><init>()V

    .line 44
    .line 45
    .line 46
    const-class v1, Lcom/loan/cash/credit/bizbridge/IBizBridge;

    .line 47
    .line 48
    const-class v2, Lteam/opay/easemoni/analytics/EMBizBridgeImpl;

    .line 49
    .line 50
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$4;

    .line 54
    .line 55
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$4;-><init>()V

    .line 56
    .line 57
    .line 58
    const-class v2, Lcom/loan/cash/credit/business/MerchantBizBridgeImpl;

    .line 59
    .line 60
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$5;

    .line 64
    .line 65
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$5;-><init>()V

    .line 66
    .line 67
    .line 68
    const-class v2, Lcom/loan/cash/credit/bnpl/BNPLBizBridgeImpl;

    .line 69
    .line 70
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$6;

    .line 74
    .line 75
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$6;-><init>()V

    .line 76
    .line 77
    .line 78
    const-class v1, Lp87;

    .line 79
    .line 80
    const-class v2, Lcom/loan/cash/credit/bnpl/BNPLH5UserInfoProvider;

    .line 81
    .line 82
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$7;

    .line 86
    .line 87
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$7;-><init>()V

    .line 88
    .line 89
    .line 90
    const-class v1, Lcom/loan/cash/credit/risk/IRiskConfig;

    .line 91
    .line 92
    const-class v2, Lcom/loan/cash/credit/business/RiskConfigImpl;

    .line 93
    .line 94
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$8;

    .line 98
    .line 99
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$8;-><init>()V

    .line 100
    .line 101
    .line 102
    const-class v1, Lcom/opay/face/common/IFaceSoCheck;

    .line 103
    .line 104
    const-class v2, Lcom/opay/face/common/FaceSoCheckManager;

    .line 105
    .line 106
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$9;

    .line 110
    .line 111
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$9;-><init>()V

    .line 112
    .line 113
    .line 114
    const-class v1, Lcom/opay/face/common/OFaceLiveDelegate;

    .line 115
    .line 116
    const-class v2, Lcom/opay/face/common/OFaceLiveConfigManager;

    .line 117
    .line 118
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$10;

    .line 122
    .line 123
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$10;-><init>()V

    .line 124
    .line 125
    .line 126
    const-class v1, Lcom/opay/webview/category/IWebViewInit;

    .line 127
    .line 128
    const-class v2, Lcom/opay/webview/category/DefaultWebView;

    .line 129
    .line 130
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$11;

    .line 134
    .line 135
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$11;-><init>()V

    .line 136
    .line 137
    .line 138
    const-class v1, Lw97;

    .line 139
    .line 140
    const-class v2, Lteam/opay/business/core/guide/NewGuideRequestImpl;

    .line 141
    .line 142
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 143
    .line 144
    .line 145
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$12;

    .line 146
    .line 147
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$12;-><init>()V

    .line 148
    .line 149
    .line 150
    const-class v1, Lsa7;

    .line 151
    .line 152
    const-class v2, Lteam/opay/business/core/hilt/ReceiptRequestImpl;

    .line 153
    .line 154
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$13;

    .line 158
    .line 159
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$13;-><init>()V

    .line 160
    .line 161
    .line 162
    const-class v1, Lteam/opay/business/push/core/biz/IMessageFilter;

    .line 163
    .line 164
    const-class v2, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargePushMsgFilter;

    .line 165
    .line 166
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$14;

    .line 170
    .line 171
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$14;-><init>()V

    .line 172
    .line 173
    .line 174
    const-class v2, Lteam/opay/business/push/core/delegate/GlobalDialogMessageFilter;

    .line 175
    .line 176
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 177
    .line 178
    .line 179
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$15;

    .line 180
    .line 181
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$15;-><init>()V

    .line 182
    .line 183
    .line 184
    const-class v2, Lteam/opay/business/push/core/delegate/PushMessageFilter;

    .line 185
    .line 186
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$16;

    .line 190
    .line 191
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$16;-><init>()V

    .line 192
    .line 193
    .line 194
    const-class v2, Lteam/opay/business/push/core/delegate/TtsMessageFilter;

    .line 195
    .line 196
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 197
    .line 198
    .line 199
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$17;

    .line 200
    .line 201
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$17;-><init>()V

    .line 202
    .line 203
    .line 204
    const-class v1, Lteam/opay/core/api/net/delegate/RequestUrlDelegate;

    .line 205
    .line 206
    const-class v2, Lteam/opay/pay/api/OpayRequestUrl;

    .line 207
    .line 208
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 209
    .line 210
    .line 211
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$18;

    .line 212
    .line 213
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$18;-><init>()V

    .line 214
    .line 215
    .line 216
    const-class v1, Lteam/opay/core/common/android/glide/IGlideModel;

    .line 217
    .line 218
    const-class v2, Lteam/opay/core/biz/kong/IPrivacyImage;

    .line 219
    .line 220
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 221
    .line 222
    .line 223
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$19;

    .line 224
    .line 225
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$19;-><init>()V

    .line 226
    .line 227
    .line 228
    const-class v2, Lteam/opay/core/common/android/glide/IImageResize;

    .line 229
    .line 230
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 231
    .line 232
    .line 233
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$20;

    .line 234
    .line 235
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$20;-><init>()V

    .line 236
    .line 237
    .line 238
    const-class v1, Lteam/opay/core/common/spi/IFragment;

    .line 239
    .line 240
    const-class v2, Lteam/opay/business/transfer/flow/transactions/IExpenseAccountHistory;

    .line 241
    .line 242
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 243
    .line 244
    .line 245
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$21;

    .line 246
    .line 247
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$21;-><init>()V

    .line 248
    .line 249
    .line 250
    const-class v2, Lteam/opay/business/transfer/flow/transactions/IRecentTransaction;

    .line 251
    .line 252
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 253
    .line 254
    .line 255
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$22;

    .line 256
    .line 257
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$22;-><init>()V

    .line 258
    .line 259
    .line 260
    const-class v2, Lteam/opay/business/transfer/flow/transactions/ITransactionDetail;

    .line 261
    .line 262
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 263
    .line 264
    .line 265
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$23;

    .line 266
    .line 267
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$23;-><init>()V

    .line 268
    .line 269
    .line 270
    const-class v2, Lteam/opay/business/transfer/flow/transactions/ITransactionHome;

    .line 271
    .line 272
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$24;

    .line 276
    .line 277
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$24;-><init>()V

    .line 278
    .line 279
    .line 280
    const-class v2, Lteam/opay/business/share/IReceiptFragment;

    .line 281
    .line 282
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 283
    .line 284
    .line 285
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$25;

    .line 286
    .line 287
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$25;-><init>()V

    .line 288
    .line 289
    .line 290
    const-class v2, Lteam/opay/opb/qrcode/hms/business/IHmsScanFragment;

    .line 291
    .line 292
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 293
    .line 294
    .line 295
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$26;

    .line 296
    .line 297
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$26;-><init>()V

    .line 298
    .line 299
    .line 300
    const-class v1, Lteam/opay/core/common/spi/IHomeFragment;

    .line 301
    .line 302
    const-class v2, Lteam/opay/business/csc/ICustomerServiceFragment;

    .line 303
    .line 304
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 305
    .line 306
    .line 307
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$27;

    .line 308
    .line 309
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$27;-><init>()V

    .line 310
    .line 311
    .line 312
    const-class v1, Lteam/opay/core/spi/IBuilderDelegate;

    .line 313
    .line 314
    const-class v2, Lteam/opay/spos/base/api/BuilderDelegate;

    .line 315
    .line 316
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 317
    .line 318
    .line 319
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$28;

    .line 320
    .line 321
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$28;-><init>()V

    .line 322
    .line 323
    .line 324
    const-class v1, Lteam/opay/core/spi/IHttpDelegate;

    .line 325
    .line 326
    const-class v2, Lteam/opay/business/push/core/delegate/HttpDelegate;

    .line 327
    .line 328
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 329
    .line 330
    .line 331
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$29;

    .line 332
    .line 333
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$29;-><init>()V

    .line 334
    .line 335
    .line 336
    const-class v2, Lteam/opay/core/biz/HttpDelegate;

    .line 337
    .line 338
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 339
    .line 340
    .line 341
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$30;

    .line 342
    .line 343
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$30;-><init>()V

    .line 344
    .line 345
    .line 346
    const-class v2, Lteam/opay/core/biz/kong/HttpDelegate;

    .line 347
    .line 348
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 349
    .line 350
    .line 351
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$31;

    .line 352
    .line 353
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$31;-><init>()V

    .line 354
    .line 355
    .line 356
    const-class v2, Lteam/opay/core/biz/rsa/HttpDelegate;

    .line 357
    .line 358
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 359
    .line 360
    .line 361
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$32;

    .line 362
    .line 363
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$32;-><init>()V

    .line 364
    .line 365
    .line 366
    const-class v1, Lteam/opay/easemoni/module/loop/loan/controller/base/EMIUseLoanController;

    .line 367
    .line 368
    const-class v2, Lteam/opay/easemoni/module/loop/loan/controller/EMUseLoanAccountController;

    .line 369
    .line 370
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 371
    .line 372
    .line 373
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$33;

    .line 374
    .line 375
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$33;-><init>()V

    .line 376
    .line 377
    .line 378
    const-class v2, Lteam/opay/easemoni/module/loop/loan/controller/EMUseLoanAmountController;

    .line 379
    .line 380
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 381
    .line 382
    .line 383
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$34;

    .line 384
    .line 385
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$34;-><init>()V

    .line 386
    .line 387
    .line 388
    const-class v2, Lteam/opay/easemoni/module/loop/loan/controller/EMUseLoanApplyController;

    .line 389
    .line 390
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 391
    .line 392
    .line 393
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$35;

    .line 394
    .line 395
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$35;-><init>()V

    .line 396
    .line 397
    .line 398
    const-class v2, Lteam/opay/easemoni/module/loop/loan/controller/EMUseLoanCouponController;

    .line 399
    .line 400
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 401
    .line 402
    .line 403
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$36;

    .line 404
    .line 405
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$36;-><init>()V

    .line 406
    .line 407
    .line 408
    const-class v2, Lteam/opay/easemoni/module/loop/loan/controller/EMUseLoanLoadingAndErrorController;

    .line 409
    .line 410
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 411
    .line 412
    .line 413
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$37;

    .line 414
    .line 415
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$37;-><init>()V

    .line 416
    .line 417
    .line 418
    const-class v2, Lteam/opay/easemoni/module/loop/loan/controller/EMUseLoanNoteController;

    .line 419
    .line 420
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 421
    .line 422
    .line 423
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$38;

    .line 424
    .line 425
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$38;-><init>()V

    .line 426
    .line 427
    .line 428
    const-class v2, Lteam/opay/easemoni/module/loop/loan/controller/EMUseLoanRetainDialogController;

    .line 429
    .line 430
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 431
    .line 432
    .line 433
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$39;

    .line 434
    .line 435
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$39;-><init>()V

    .line 436
    .line 437
    .line 438
    const-class v2, Lteam/opay/easemoni/module/loop/loan/controller/EMUseLoanTenureController;

    .line 439
    .line 440
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 441
    .line 442
    .line 443
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$40;

    .line 444
    .line 445
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$40;-><init>()V

    .line 446
    .line 447
    .line 448
    const-class v2, Lteam/opay/easemoni/module/loop/loan/controller/EMUseLoanTrialResultController;

    .line 449
    .line 450
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 451
    .line 452
    .line 453
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$41;

    .line 454
    .line 455
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$41;-><init>()V

    .line 456
    .line 457
    .line 458
    const-class v2, Lteam/opay/easemoni/module/loop/loan/controller/EMUseLoanVerifyPoolController;

    .line 459
    .line 460
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 461
    .line 462
    .line 463
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$42;

    .line 464
    .line 465
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$42;-><init>()V

    .line 466
    .line 467
    .line 468
    const-class v1, Lteam/opay/face/net/RequestUrlDelegate;

    .line 469
    .line 470
    const-class v2, Lteam/opay/face/net/OpayRequestUrl;

    .line 471
    .line 472
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 473
    .line 474
    .line 475
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$43;

    .line 476
    .line 477
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$43;-><init>()V

    .line 478
    .line 479
    .line 480
    const-class v1, Lteam/opay/notifications/MessageReceiverDelegate;

    .line 481
    .line 482
    const-class v2, Lcom/opay/team/home/message/OMainMessageDelegate;

    .line 483
    .line 484
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 485
    .line 486
    .line 487
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$44;

    .line 488
    .line 489
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$44;-><init>()V

    .line 490
    .line 491
    .line 492
    const-class v1, Lteam/opay/oim/manager/im/IMMessageReceiverDelegate;

    .line 493
    .line 494
    const-class v2, Lteam/opay/pay/message/delegate/MQTTMessageCenterReceiveDelegate;

    .line 495
    .line 496
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 497
    .line 498
    .line 499
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$45;

    .line 500
    .line 501
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$45;-><init>()V

    .line 502
    .line 503
    .line 504
    const-class v1, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 505
    .line 506
    const-class v2, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;

    .line 507
    .line 508
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 509
    .line 510
    .line 511
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$46;

    .line 512
    .line 513
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$46;-><init>()V

    .line 514
    .line 515
    .line 516
    const-class v2, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;

    .line 517
    .line 518
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 519
    .line 520
    .line 521
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$47;

    .line 522
    .line 523
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$47;-><init>()V

    .line 524
    .line 525
    .line 526
    const-class v1, Lteam/opay/pay/analytics/AppsflyerConversionDelegate;

    .line 527
    .line 528
    const-class v2, Lcom/opay/team/invite/AdSetIdConversionDelegate;

    .line 529
    .line 530
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 531
    .line 532
    .line 533
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$48;

    .line 534
    .line 535
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$48;-><init>()V

    .line 536
    .line 537
    .line 538
    const-class v2, Lteam/opay/pay/home/scheme/appsflyer/InviteAppflyerConversionDelegate;

    .line 539
    .line 540
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 541
    .line 542
    .line 543
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$49;

    .line 544
    .line 545
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$49;-><init>()V

    .line 546
    .line 547
    .line 548
    const-class v1, Lteam/opay/pay/home/AppLaunchDelegate;

    .line 549
    .line 550
    const-class v2, Lteam/opay/pay/firebase/ThirdInitAppLaunchDelegate;

    .line 551
    .line 552
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 553
    .line 554
    .line 555
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$50;

    .line 556
    .line 557
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$50;-><init>()V

    .line 558
    .line 559
    .line 560
    const-class v2, Lteam/opay/business/picture/h5Photo/AppDelegate;

    .line 561
    .line 562
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 563
    .line 564
    .line 565
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$51;

    .line 566
    .line 567
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$51;-><init>()V

    .line 568
    .line 569
    .line 570
    const-class v2, Lteam/opay/risk/RiskAppLaunchDelegate;

    .line 571
    .line 572
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 573
    .line 574
    .line 575
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$52;

    .line 576
    .line 577
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$52;-><init>()V

    .line 578
    .line 579
    .line 580
    const-class v1, Lteam/opay/pay/home/MainActivityDelegate;

    .line 581
    .line 582
    const-class v2, Lteam/opay/pay/analytics/AnalyticsMainActivityDelegate;

    .line 583
    .line 584
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 585
    .line 586
    .line 587
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$53;

    .line 588
    .line 589
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$53;-><init>()V

    .line 590
    .line 591
    .line 592
    const-class v2, Lteam/opay/pay/analytics/AutoUploadActivityDelegate;

    .line 593
    .line 594
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 595
    .line 596
    .line 597
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$54;

    .line 598
    .line 599
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$54;-><init>()V

    .line 600
    .line 601
    .line 602
    const-class v2, Lteam/opay/pay/facebook/FacebookActivityDelegate;

    .line 603
    .line 604
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 605
    .line 606
    .line 607
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$55;

    .line 608
    .line 609
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$55;-><init>()V

    .line 610
    .line 611
    .line 612
    const-class v2, Lteam/opay/pay/home/TickOutMainActivityDelegate;

    .line 613
    .line 614
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 615
    .line 616
    .line 617
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$56;

    .line 618
    .line 619
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$56;-><init>()V

    .line 620
    .line 621
    .line 622
    const-class v2, Lteam/opay/pay/home/scheme/OpayMainActivitySchemeDelegate;

    .line 623
    .line 624
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 625
    .line 626
    .line 627
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$57;

    .line 628
    .line 629
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$57;-><init>()V

    .line 630
    .line 631
    .line 632
    const-class v2, Lteam/opay/pay/home/websocket/WebsocketMainDelegate;

    .line 633
    .line 634
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 635
    .line 636
    .line 637
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$58;

    .line 638
    .line 639
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$58;-><init>()V

    .line 640
    .line 641
    .line 642
    const-class v2, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate;

    .line 643
    .line 644
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 645
    .line 646
    .line 647
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$59;

    .line 648
    .line 649
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$59;-><init>()V

    .line 650
    .line 651
    .line 652
    const-class v2, Lteam/opay/easemoni/EMOPayMainActivityDelegate;

    .line 653
    .line 654
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 655
    .line 656
    .line 657
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$60;

    .line 658
    .line 659
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$60;-><init>()V

    .line 660
    .line 661
    .line 662
    const-class v2, Lcom/loan/cash/credit/bnpl/BNPLOPayMainActivityDelegate;

    .line 663
    .line 664
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 665
    .line 666
    .line 667
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$61;

    .line 668
    .line 669
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$61;-><init>()V

    .line 670
    .line 671
    .line 672
    const-class v2, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;

    .line 673
    .line 674
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 675
    .line 676
    .line 677
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$62;

    .line 678
    .line 679
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$62;-><init>()V

    .line 680
    .line 681
    .line 682
    const-class v2, Lteam/opay/business/js/hybrid/BusinessJsMainDelegate;

    .line 683
    .line 684
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 685
    .line 686
    .line 687
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$63;

    .line 688
    .line 689
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$63;-><init>()V

    .line 690
    .line 691
    .line 692
    const-class v2, Lteam/opay/pay/hybrid/HybridMainActivityDelegate;

    .line 693
    .line 694
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 695
    .line 696
    .line 697
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$64;

    .line 698
    .line 699
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$64;-><init>()V

    .line 700
    .line 701
    .line 702
    const-class v2, Lcom/opay/webview/WebViewMainActivityDelegate;

    .line 703
    .line 704
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 705
    .line 706
    .line 707
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$65;

    .line 708
    .line 709
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$65;-><init>()V

    .line 710
    .line 711
    .line 712
    const-class v1, Lteam/opay/pay/home/pay/Business;

    .line 713
    .line 714
    const-class v2, Lcom/opay/team/home/CommonBusiness;

    .line 715
    .line 716
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 717
    .line 718
    .line 719
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$66;

    .line 720
    .line 721
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$66;-><init>()V

    .line 722
    .line 723
    .line 724
    const-class v2, Lteam/opay/pay/home/scheme/OPayHomeBusiness;

    .line 725
    .line 726
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 727
    .line 728
    .line 729
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$67;

    .line 730
    .line 731
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$67;-><init>()V

    .line 732
    .line 733
    .line 734
    const-class v1, Lteam/opay/pay/message/api/IMessageSchemeDispatcher;

    .line 735
    .line 736
    const-class v2, Lcom/opay/team/home/message/OpaySchemeDispatcher;

    .line 737
    .line 738
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 739
    .line 740
    .line 741
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$68;

    .line 742
    .line 743
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$68;-><init>()V

    .line 744
    .line 745
    .line 746
    const-class v1, Lq89;

    .line 747
    .line 748
    const-class v2, Lteam/opay/core/android/views/MessageCenterImageSizeModel;

    .line 749
    .line 750
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 751
    .line 752
    .line 753
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$69;

    .line 754
    .line 755
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$69;-><init>()V

    .line 756
    .line 757
    .line 758
    const-class v1, Lteam/opay/pay/oshare/inter/IShare;

    .line 759
    .line 760
    const-class v2, Lteam/opay/pay/oshare/inter/impl/CopyImpl;

    .line 761
    .line 762
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 763
    .line 764
    .line 765
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$70;

    .line 766
    .line 767
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$70;-><init>()V

    .line 768
    .line 769
    .line 770
    const-class v2, Lteam/opay/pay/oshare/inter/impl/FacebookImpl;

    .line 771
    .line 772
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 773
    .line 774
    .line 775
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$71;

    .line 776
    .line 777
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$71;-><init>()V

    .line 778
    .line 779
    .line 780
    const-class v2, Lteam/opay/pay/oshare/inter/impl/SmsShareImpl;

    .line 781
    .line 782
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 783
    .line 784
    .line 785
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$72;

    .line 786
    .line 787
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$72;-><init>()V

    .line 788
    .line 789
    .line 790
    const-class v2, Lteam/opay/pay/oshare/inter/impl/SystemShareImpl;

    .line 791
    .line 792
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 793
    .line 794
    .line 795
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$73;

    .line 796
    .line 797
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$73;-><init>()V

    .line 798
    .line 799
    .line 800
    const-class v2, Lteam/opay/pay/oshare/inter/impl/TwitterImpl;

    .line 801
    .line 802
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 803
    .line 804
    .line 805
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$74;

    .line 806
    .line 807
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$74;-><init>()V

    .line 808
    .line 809
    .line 810
    const-class v2, Lteam/opay/pay/oshare/inter/impl/WhatsAppImpl;

    .line 811
    .line 812
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 813
    .line 814
    .line 815
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$75;

    .line 816
    .line 817
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$75;-><init>()V

    .line 818
    .line 819
    .line 820
    const-class v1, Lteam/opay/pay/settings/SettingRedDot;

    .line 821
    .line 822
    const-class v2, Lteam/opay/pay/settings/HomePageSettingShowDotSetting;

    .line 823
    .line 824
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 825
    .line 826
    .line 827
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$76;

    .line 828
    .line 829
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$76;-><init>()V

    .line 830
    .line 831
    .line 832
    const-class v2, Lteam/opay/pay/settings/NewVersionSettingRedDot;

    .line 833
    .line 834
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 835
    .line 836
    .line 837
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$77;

    .line 838
    .line 839
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$77;-><init>()V

    .line 840
    .line 841
    .line 842
    const-class v2, Lteam/opay/pay/settings/ThemeSettingsShowDot;

    .line 843
    .line 844
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 845
    .line 846
    .line 847
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$78;

    .line 848
    .line 849
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$78;-><init>()V

    .line 850
    .line 851
    .line 852
    const-class v1, Lr87;

    .line 853
    .line 854
    const-class v2, Lteam/opay/pay/home/websocket/WebsocketHeaderDelegate;

    .line 855
    .line 856
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 857
    .line 858
    .line 859
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$79;

    .line 860
    .line 861
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$79;-><init>()V

    .line 862
    .line 863
    .line 864
    const-class v1, Lteam/opay/spos/base/spi/PosModuleFragment;

    .line 865
    .line 866
    const-class v2, Lteam/opay/spos/base/spi/DefaultFragment;

    .line 867
    .line 868
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 869
    .line 870
    .line 871
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$80;

    .line 872
    .line 873
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$80;-><init>()V

    .line 874
    .line 875
    .line 876
    const-class v1, Lteam/opay/spos/printer/internal/IPrinterModuleFragment;

    .line 877
    .line 878
    const-class v2, Lteam/opay/spos/printer/function/BitmapPrintProvider;

    .line 879
    .line 880
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 881
    .line 882
    .line 883
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$81;

    .line 884
    .line 885
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$81;-><init>()V

    .line 886
    .line 887
    .line 888
    const-class v2, Lteam/opay/spos/printer/function/DefaultPrintProvider;

    .line 889
    .line 890
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 891
    .line 892
    .line 893
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$82;

    .line 894
    .line 895
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$82;-><init>()V

    .line 896
    .line 897
    .line 898
    const-class v2, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 899
    .line 900
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 901
    .line 902
    .line 903
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$83;

    .line 904
    .line 905
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$83;-><init>()V

    .line 906
    .line 907
    .line 908
    const-class v2, Lteam/opay/spos/printer/internal/DefaultFragment;

    .line 909
    .line 910
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 911
    .line 912
    .line 913
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$84;

    .line 914
    .line 915
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$84;-><init>()V

    .line 916
    .line 917
    .line 918
    const-class v1, Lma7;

    .line 919
    .line 920
    const-class v2, Lteam/opay/spos/printer/render/PrintColumn;

    .line 921
    .line 922
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 923
    .line 924
    .line 925
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$85;

    .line 926
    .line 927
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$85;-><init>()V

    .line 928
    .line 929
    .line 930
    const-class v2, Lteam/opay/spos/printer/render/PrintDashLine;

    .line 931
    .line 932
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 933
    .line 934
    .line 935
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$86;

    .line 936
    .line 937
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$86;-><init>()V

    .line 938
    .line 939
    .line 940
    const-class v2, Lteam/opay/spos/printer/render/PrintHeader;

    .line 941
    .line 942
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 943
    .line 944
    .line 945
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$87;

    .line 946
    .line 947
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$87;-><init>()V

    .line 948
    .line 949
    .line 950
    const-class v2, Lteam/opay/spos/printer/render/PrintImage;

    .line 951
    .line 952
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 953
    .line 954
    .line 955
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$88;

    .line 956
    .line 957
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$88;-><init>()V

    .line 958
    .line 959
    .line 960
    const-class v2, Lteam/opay/spos/printer/render/PrintLogo;

    .line 961
    .line 962
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 963
    .line 964
    .line 965
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$89;

    .line 966
    .line 967
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$89;-><init>()V

    .line 968
    .line 969
    .line 970
    const-class v2, Lteam/opay/spos/printer/render/PrintNoticeBottomIcon;

    .line 971
    .line 972
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 973
    .line 974
    .line 975
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$90;

    .line 976
    .line 977
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$90;-><init>()V

    .line 978
    .line 979
    .line 980
    const-class v2, Lteam/opay/spos/printer/render/PrintNoticeTitle1;

    .line 981
    .line 982
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 983
    .line 984
    .line 985
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$91;

    .line 986
    .line 987
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$91;-><init>()V

    .line 988
    .line 989
    .line 990
    const-class v2, Lteam/opay/spos/printer/render/PrintNoticeTitle2;

    .line 991
    .line 992
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 993
    .line 994
    .line 995
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$92;

    .line 996
    .line 997
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$92;-><init>()V

    .line 998
    .line 999
    .line 1000
    const-class v2, Lteam/opay/spos/printer/render/PrintNoticeTitle3;

    .line 1001
    .line 1002
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1003
    .line 1004
    .line 1005
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$93;

    .line 1006
    .line 1007
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$93;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    const-class v2, Lteam/opay/spos/printer/render/PrintNoticeTitle4;

    .line 1011
    .line 1012
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1013
    .line 1014
    .line 1015
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$94;

    .line 1016
    .line 1017
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$94;-><init>()V

    .line 1018
    .line 1019
    .line 1020
    const-class v2, Lteam/opay/spos/printer/render/PrintOkash;

    .line 1021
    .line 1022
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1023
    .line 1024
    .line 1025
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$95;

    .line 1026
    .line 1027
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$95;-><init>()V

    .line 1028
    .line 1029
    .line 1030
    const-class v2, Lteam/opay/spos/printer/render/PrintSeparate;

    .line 1031
    .line 1032
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1033
    .line 1034
    .line 1035
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$96;

    .line 1036
    .line 1037
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$96;-><init>()V

    .line 1038
    .line 1039
    .line 1040
    const-class v2, Lteam/opay/spos/printer/render/PrintText;

    .line 1041
    .line 1042
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1043
    .line 1044
    .line 1045
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$97;

    .line 1046
    .line 1047
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$97;-><init>()V

    .line 1048
    .line 1049
    .line 1050
    const-class v2, Lteam/opay/spos/printer/render/PrintTextALL;

    .line 1051
    .line 1052
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1053
    .line 1054
    .line 1055
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$98;

    .line 1056
    .line 1057
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$98;-><init>()V

    .line 1058
    .line 1059
    .line 1060
    const-class v2, Lteam/opay/spos/printer/render/PrintTextALL2;

    .line 1061
    .line 1062
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1063
    .line 1064
    .line 1065
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$99;

    .line 1066
    .line 1067
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$99;-><init>()V

    .line 1068
    .line 1069
    .line 1070
    const-class v1, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 1071
    .line 1072
    const-class v2, Lcom/opay/team/home/ActionManagerImpl;

    .line 1073
    .line 1074
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1075
    .line 1076
    .line 1077
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$100;

    .line 1078
    .line 1079
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$100;-><init>()V

    .line 1080
    .line 1081
    .line 1082
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 1083
    .line 1084
    const-class v2, Lcom/opay/team/home/data/CombinationDataGenerator;

    .line 1085
    .line 1086
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1087
    .line 1088
    .line 1089
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$101;

    .line 1090
    .line 1091
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$101;-><init>()V

    .line 1092
    .line 1093
    .line 1094
    const-class v1, Lteam/opay/swarmfoundation/frame/ApplicationDelegate;

    .line 1095
    .line 1096
    const-class v2, Lcom/opay/team/home/OMainApplicationDelegate;

    .line 1097
    .line 1098
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1099
    .line 1100
    .line 1101
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$102;

    .line 1102
    .line 1103
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$102;-><init>()V

    .line 1104
    .line 1105
    .line 1106
    const-class v2, Lteam/opay/pay/firebase/FirebaseApplicationDelegate;

    .line 1107
    .line 1108
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1109
    .line 1110
    .line 1111
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$103;

    .line 1112
    .line 1113
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$103;-><init>()V

    .line 1114
    .line 1115
    .line 1116
    const-class v2, Lteam/opay/pay/home/scheme/OpayApplidationDelegate;

    .line 1117
    .line 1118
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1119
    .line 1120
    .line 1121
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$104;

    .line 1122
    .line 1123
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$104;-><init>()V

    .line 1124
    .line 1125
    .line 1126
    const-class v2, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;

    .line 1127
    .line 1128
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1129
    .line 1130
    .line 1131
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$105;

    .line 1132
    .line 1133
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$105;-><init>()V

    .line 1134
    .line 1135
    .line 1136
    const-class v2, Lteam/opay/pay/module/capturescreen/CaptureScreenApplicationDelegate;

    .line 1137
    .line 1138
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1139
    .line 1140
    .line 1141
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$106;

    .line 1142
    .line 1143
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$106;-><init>()V

    .line 1144
    .line 1145
    .line 1146
    const-class v2, Lteam/opay/pay/onboarding/delegate/AppLockInterceptorDelegate;

    .line 1147
    .line 1148
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1149
    .line 1150
    .line 1151
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$107;

    .line 1152
    .line 1153
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$107;-><init>()V

    .line 1154
    .line 1155
    .line 1156
    const-class v2, Lteam/opay/easemoni/EMApplicationDelegate;

    .line 1157
    .line 1158
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1159
    .line 1160
    .line 1161
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$108;

    .line 1162
    .line 1163
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$108;-><init>()V

    .line 1164
    .line 1165
    .line 1166
    const-class v2, Lcom/loan/cash/credit/business/EMApplicationDelegate;

    .line 1167
    .line 1168
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1169
    .line 1170
    .line 1171
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$109;

    .line 1172
    .line 1173
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$109;-><init>()V

    .line 1174
    .line 1175
    .line 1176
    const-class v2, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;

    .line 1177
    .line 1178
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1179
    .line 1180
    .line 1181
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$110;

    .line 1182
    .line 1183
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$110;-><init>()V

    .line 1184
    .line 1185
    .line 1186
    const-class v2, Lteam/opay/spos/printer/PrinterApplicationDelegate;

    .line 1187
    .line 1188
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1189
    .line 1190
    .line 1191
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$111;

    .line 1192
    .line 1193
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$111;-><init>()V

    .line 1194
    .line 1195
    .line 1196
    const-class v2, Lteam/opay/spos/printer/delegate/PrinterApplicationDelegate;

    .line 1197
    .line 1198
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1199
    .line 1200
    .line 1201
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$112;

    .line 1202
    .line 1203
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$112;-><init>()V

    .line 1204
    .line 1205
    .line 1206
    const-class v2, Lteam/opay/core/common/AppDelegate;

    .line 1207
    .line 1208
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1209
    .line 1210
    .line 1211
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$113;

    .line 1212
    .line 1213
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$113;-><init>()V

    .line 1214
    .line 1215
    .line 1216
    const-class v2, Lteam/opay/abtest/ABTestApplicationDelegate;

    .line 1217
    .line 1218
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1219
    .line 1220
    .line 1221
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$114;

    .line 1222
    .line 1223
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$114;-><init>()V

    .line 1224
    .line 1225
    .line 1226
    const-class v2, Lcom/opay/webview/WebViewApplicationDelegate;

    .line 1227
    .line 1228
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1229
    .line 1230
    .line 1231
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$115;

    .line 1232
    .line 1233
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$115;-><init>()V

    .line 1234
    .line 1235
    .line 1236
    const-class v2, Lteam/opay/pay/websocket/WebsocketApplicationDelegate;

    .line 1237
    .line 1238
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1239
    .line 1240
    .line 1241
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$116;

    .line 1242
    .line 1243
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$116;-><init>()V

    .line 1244
    .line 1245
    .line 1246
    const-class v2, Lteam/opay/pay/security/intercept/SelectorProxyDelegate;

    .line 1247
    .line 1248
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1249
    .line 1250
    .line 1251
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$117;

    .line 1252
    .line 1253
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$117;-><init>()V

    .line 1254
    .line 1255
    .line 1256
    const-class v2, Lteam/opay/swarmfoundation/frame/CommonApplicationDelegate;

    .line 1257
    .line 1258
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1259
    .line 1260
    .line 1261
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$118;

    .line 1262
    .line 1263
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$118;-><init>()V

    .line 1264
    .line 1265
    .line 1266
    const-class v1, Lteam/opay/swarmfoundation/hybrid/IHybridDelegate;

    .line 1267
    .line 1268
    const-class v2, Lcom/loan/cash/credit/business/ui/web/EaseMerchantHybridDelegate;

    .line 1269
    .line 1270
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1271
    .line 1272
    .line 1273
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$119;

    .line 1274
    .line 1275
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$119;-><init>()V

    .line 1276
    .line 1277
    .line 1278
    const-class v2, Lcom/loan/cash/credit/bnpl/BNPLHybridDelegate;

    .line 1279
    .line 1280
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1281
    .line 1282
    .line 1283
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$120;

    .line 1284
    .line 1285
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$120;-><init>()V

    .line 1286
    .line 1287
    .line 1288
    const-class v2, Lteam/opay/business/js/hybrid/BusinessJsHybridDelegate;

    .line 1289
    .line 1290
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1291
    .line 1292
    .line 1293
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$121;

    .line 1294
    .line 1295
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$121;-><init>()V

    .line 1296
    .line 1297
    .line 1298
    const-class v2, Lteam/opay/pay/hybrid/HybridDelegate;

    .line 1299
    .line 1300
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1301
    .line 1302
    .line 1303
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$122;

    .line 1304
    .line 1305
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$122;-><init>()V

    .line 1306
    .line 1307
    .line 1308
    const-class v1, Lteam/opay/swarmfoundation/login/IAuthError;

    .line 1309
    .line 1310
    const-class v2, Lteam/opay/pay/home/AuthErrorDelegate;

    .line 1311
    .line 1312
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1313
    .line 1314
    .line 1315
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$123;

    .line 1316
    .line 1317
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$123;-><init>()V

    .line 1318
    .line 1319
    .line 1320
    const-class v1, Lteam/opay/swarmfoundation/login/ILoginListener;

    .line 1321
    .line 1322
    const-class v2, Lteam/opay/core/android/arch/NewPayLogoutCallbackImpl;

    .line 1323
    .line 1324
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1325
    .line 1326
    .line 1327
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$124;

    .line 1328
    .line 1329
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$124;-><init>()V

    .line 1330
    .line 1331
    .line 1332
    const-class v2, Lteam/opay/easemoni/EMLoginLogoutDelegate;

    .line 1333
    .line 1334
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1335
    .line 1336
    .line 1337
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$125;

    .line 1338
    .line 1339
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$125;-><init>()V

    .line 1340
    .line 1341
    .line 1342
    const-class v2, Lteam/opay/pay/message/delegate/LogoutCallbackImpl;

    .line 1343
    .line 1344
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1345
    .line 1346
    .line 1347
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$126;

    .line 1348
    .line 1349
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$126;-><init>()V

    .line 1350
    .line 1351
    .line 1352
    const-class v2, Lteam/opay/business/push/core/LoginListener;

    .line 1353
    .line 1354
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1355
    .line 1356
    .line 1357
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$127;

    .line 1358
    .line 1359
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$127;-><init>()V

    .line 1360
    .line 1361
    .line 1362
    const-class v2, Lteam/opay/abtest/ABLoginImpl;

    .line 1363
    .line 1364
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1365
    .line 1366
    .line 1367
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$128;

    .line 1368
    .line 1369
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$128;-><init>()V

    .line 1370
    .line 1371
    .line 1372
    const-class v2, Lcom/opay/webview/ClearCookieLogoutDelegate;

    .line 1373
    .line 1374
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1375
    .line 1376
    .line 1377
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$129;

    .line 1378
    .line 1379
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$129;-><init>()V

    .line 1380
    .line 1381
    .line 1382
    const-class v2, Lteam/opay/pay/websocket/WebsocketLogoutDelegate;

    .line 1383
    .line 1384
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1385
    .line 1386
    .line 1387
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$130;

    .line 1388
    .line 1389
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$130;-><init>()V

    .line 1390
    .line 1391
    .line 1392
    const-class v1, Lteam/opay/swarmfoundation/message/IForceRemindNoticeDelegate;

    .line 1393
    .line 1394
    const-class v2, Lteam/opay/pay/notifications/RemindAppLockDelegate;

    .line 1395
    .line 1396
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1397
    .line 1398
    .line 1399
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$131;

    .line 1400
    .line 1401
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$131;-><init>()V

    .line 1402
    .line 1403
    .line 1404
    const-class v1, Lteam/opay/swarmfoundation/message/IForceRemindNoticeShowDelegate;

    .line 1405
    .line 1406
    const-class v2, Lteam/opay/pay/message/delegate/ForceRemindNoticeShowDelegate;

    .line 1407
    .line 1408
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1409
    .line 1410
    .line 1411
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$132;

    .line 1412
    .line 1413
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$132;-><init>()V

    .line 1414
    .line 1415
    .line 1416
    const-class v1, Lteam/opay/swarmfoundation/message/IMessageNumDelegate;

    .line 1417
    .line 1418
    const-class v2, Lcom/opay/team/newhome/home/MessageNumDelegate;

    .line 1419
    .line 1420
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1421
    .line 1422
    .line 1423
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$133;

    .line 1424
    .line 1425
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$133;-><init>()V

    .line 1426
    .line 1427
    .line 1428
    const-class v1, Lteam/opay/swarmfoundation/message/IMessageReceiverDelegate;

    .line 1429
    .line 1430
    const-class v2, Lteam/opay/pay/message/delegate/FirebaseMessageReceiverDelegate;

    .line 1431
    .line 1432
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1433
    .line 1434
    .line 1435
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$134;

    .line 1436
    .line 1437
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$134;-><init>()V

    .line 1438
    .line 1439
    .line 1440
    const-class v2, Lteam/opay/business/push/core/delegate/OpbReceiverDelegate;

    .line 1441
    .line 1442
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1443
    .line 1444
    .line 1445
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$135;

    .line 1446
    .line 1447
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$135;-><init>()V

    .line 1448
    .line 1449
    .line 1450
    const-class v2, Lteam/opay/business/push/core/delegate/OpcReceiverDelegate;

    .line 1451
    .line 1452
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1453
    .line 1454
    .line 1455
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$136;

    .line 1456
    .line 1457
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$136;-><init>()V

    .line 1458
    .line 1459
    .line 1460
    const-class v1, Lteam/opay/swarmfoundation/otp/ISmsOtpInterface;

    .line 1461
    .line 1462
    const-class v2, Lteam/opay/pay/account/otp/SmsOtpDelegate;

    .line 1463
    .line 1464
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1465
    .line 1466
    .line 1467
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$137;

    .line 1468
    .line 1469
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$137;-><init>()V

    .line 1470
    .line 1471
    .line 1472
    const-class v1, Lc97;

    .line 1473
    .line 1474
    const-class v2, Lteam/opay/pay/easycash/LoanApiImpl;

    .line 1475
    .line 1476
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1477
    .line 1478
    .line 1479
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$138;

    .line 1480
    .line 1481
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$138;-><init>()V

    .line 1482
    .line 1483
    .line 1484
    const-class v1, Lteam/opay/swarmfoundation/payment/IPaymentCashier;

    .line 1485
    .line 1486
    const-class v2, Lteam/opay/pay/cashier/PaymentCashierImpl;

    .line 1487
    .line 1488
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1489
    .line 1490
    .line 1491
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$139;

    .line 1492
    .line 1493
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$139;-><init>()V

    .line 1494
    .line 1495
    .line 1496
    const-class v1, Lteam/opay/swarmfoundation/payment/OLoanFragment;

    .line 1497
    .line 1498
    const-class v2, Lteam/opay/pay/loan/opay/EMFinanceEntranceFragment;

    .line 1499
    .line 1500
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1501
    .line 1502
    .line 1503
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$140;

    .line 1504
    .line 1505
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$140;-><init>()V

    .line 1506
    .line 1507
    .line 1508
    const-class v1, Lteam/opay/swarmfoundation/webview/IWebDelegate;

    .line 1509
    .line 1510
    const-class v2, Lcom/opay/team/home/login/LoginRedirect;

    .line 1511
    .line 1512
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1513
    .line 1514
    .line 1515
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$141;

    .line 1516
    .line 1517
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$141;-><init>()V

    .line 1518
    .line 1519
    .line 1520
    const-class v2, Lcom/opay/team/newhome/dialog/OMainIWebDelegate;

    .line 1521
    .line 1522
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1523
    .line 1524
    .line 1525
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$142;

    .line 1526
    .line 1527
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$142;-><init>()V

    .line 1528
    .line 1529
    .line 1530
    const-class v2, Lteam/opay/pay/android/web/WalletJSDelegate;

    .line 1531
    .line 1532
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1533
    .line 1534
    .line 1535
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$143;

    .line 1536
    .line 1537
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$143;-><init>()V

    .line 1538
    .line 1539
    .line 1540
    const-class v2, Lteam/opay/pay/contact/OSdkIWebDelegate;

    .line 1541
    .line 1542
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1543
    .line 1544
    .line 1545
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$144;

    .line 1546
    .line 1547
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$144;-><init>()V

    .line 1548
    .line 1549
    .line 1550
    const-class v2, Lteam/opay/easemoni/EMWebViewDelegate;

    .line 1551
    .line 1552
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1553
    .line 1554
    .line 1555
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$145;

    .line 1556
    .line 1557
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$145;-><init>()V

    .line 1558
    .line 1559
    .line 1560
    const-class v2, Lteam/opay/easemoni/module/web/EMSyncWebDelegate;

    .line 1561
    .line 1562
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1563
    .line 1564
    .line 1565
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$146;

    .line 1566
    .line 1567
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$146;-><init>()V

    .line 1568
    .line 1569
    .line 1570
    const-class v2, Lteam/opay/easemoni/module/web/EMWebDelegate;

    .line 1571
    .line 1572
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1573
    .line 1574
    .line 1575
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$147;

    .line 1576
    .line 1577
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$147;-><init>()V

    .line 1578
    .line 1579
    .line 1580
    const-class v2, Lcom/loan/cash/credit/business/ui/web/EaseMerchantWebDelegate;

    .line 1581
    .line 1582
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1583
    .line 1584
    .line 1585
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$148;

    .line 1586
    .line 1587
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$148;-><init>()V

    .line 1588
    .line 1589
    .line 1590
    const-class v2, Lcashier/quickpay/QuickPayWebDelegate;

    .line 1591
    .line 1592
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1593
    .line 1594
    .line 1595
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$149;

    .line 1596
    .line 1597
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$149;-><init>()V

    .line 1598
    .line 1599
    .line 1600
    const-class v2, Lcom/loan/cash/credit/risk/RiskWebDelegate;

    .line 1601
    .line 1602
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1603
    .line 1604
    .line 1605
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$150;

    .line 1606
    .line 1607
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$150;-><init>()V

    .line 1608
    .line 1609
    .line 1610
    const-class v2, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;

    .line 1611
    .line 1612
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1613
    .line 1614
    .line 1615
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$151;

    .line 1616
    .line 1617
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$151;-><init>()V

    .line 1618
    .line 1619
    .line 1620
    const-class v2, Lteam/opay/business/js/BusinessWebDelegate;

    .line 1621
    .line 1622
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1623
    .line 1624
    .line 1625
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$152;

    .line 1626
    .line 1627
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$152;-><init>()V

    .line 1628
    .line 1629
    .line 1630
    const-class v2, Lteam/opay/business/js/delegate/ContactJsDelegate;

    .line 1631
    .line 1632
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1633
    .line 1634
    .line 1635
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$153;

    .line 1636
    .line 1637
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$153;-><init>()V

    .line 1638
    .line 1639
    .line 1640
    const-class v2, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;

    .line 1641
    .line 1642
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1643
    .line 1644
    .line 1645
    new-instance v0, Lteam/opay/pay/spi/ServiceRegistry$154;

    .line 1646
    .line 1647
    invoke-direct {v0}, Lteam/opay/pay/spi/ServiceRegistry$154;-><init>()V

    .line 1648
    .line 1649
    .line 1650
    const-class v2, Lteam/opay/business/share/ShareWebDelegate;

    .line 1651
    .line 1652
    invoke-static {v1, v2, v3, v0}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1653
    .line 1654
    .line 1655
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lteam/opay/pay/spi/ServiceRegistry;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lteam/opay/pay/spi/ServiceRegistry;->sServices:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/Set;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    return-object p0

    .line 27
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0
.end method

.method public static declared-synchronized newProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-class v0, Lteam/opay/pay/spi/ServiceRegistry;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lteam/opay/pay/spi/ServiceRegistry;->sInstantiators:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    :try_start_1
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/concurrent/Callable;

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    monitor-exit v0

    .line 26
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw p0
.end method

.method public static declared-synchronized register(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "P:TS;>(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/Class<",
            "TP;>;)V"
        }
    .end annotation

    const-class v0, Lteam/opay/pay/spi/ServiceRegistry;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    const-string v1, ""

    new-instance v2, Lteam/opay/pay/spi/ServiceRegistry$155;

    invoke-direct {v2, p1}, Lteam/opay/pay/spi/ServiceRegistry$155;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, p1, v1, v2}, Lteam/opay/pay/spi/ServiceRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "provider class is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "service class is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static declared-synchronized register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "P:TS;>(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/Class<",
            "TP;>;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TP;>;)V"
        }
    .end annotation

    const-class v0, Lteam/opay/pay/spi/ServiceRegistry;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lteam/opay/pay/spi/ServiceRegistry;->sServices:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_0

    .line 7
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 8
    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object p1, Lteam/opay/pay/spi/ServiceRegistry;->sInstantiators:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object p2, Lteam/opay/pay/spi/ServiceRegistry;->sInstantiators:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :goto_2
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
